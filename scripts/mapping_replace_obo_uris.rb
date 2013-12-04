#!/usr/bin/env ruby

require 'optparse'
require 'set'
require 'tempfile'
require 'fileutils'
require 'cgi'
require 'open-uri'
require 'net/http'
require 'pp'


options = {}
options[:uriPos] = 2
options[:ontPos] = 3

OptionParser.new do |opts|
    opts.banner = "Usage: mapping_replace_obo_uris.rb [options]"
    opts.on("-p", "--path [PATH]", "Specify path") do |p|
        options[:path] = p
    end

    opts.on("-u", "--uriPos [INT]", "Zero-based-index of URI in delimited text line.") do |u|
        options[:uriPos] = Integer(u)
    end

    opts.on("-o", "--ontPos [INT]", "Zero-based-index of ontology ID in delimited text line.") do |o|
        options[:ontPos] = Integer(o)
    end

    opts.on("-c", "--counts", "Display counts as processing is run") do |c|
        options[:counts] = c
    end

    opts.on("-t", "--test-uris", "Make one call to the BP REST service per ontology to test the new URIs") do |t|
        options[:test] = t
    end

    opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
    end
end.parse!

path = options[:path].nil? ? ARGV[0] : options[:path]

raise "Must specify a path for mapping terms triplestore output file" if path.nil?

# This will use the new URI to make a call to BioPortal once per ontology
# If the calls returns an HTTP code > 400 then we show it at the end
ENABLE_NEW_URI_TESTING = options[:test]

# Show counts as the processing progresses
SHOW_COUNT = options[:counts]

# OBO categoris to determine how we should generate URIs
OWN_URI_SCHEME_ONTS = Set.new([1072, 1073, 1074, 1075])

NEW_PURL_ONTS = Set.new([1007, 1062])

LEGACY_PURL_ONTS = Set.new([1090, 1370, 1222, 1114, 1023, 1005, 1049, 1048,
   1067, 1051, 1006, 1047, 1001, 1037, 1063, 1144, 1008,
   1016, 1015, 1069, 1012, 1013, 1064, 1017, 1019, 1397,
   1070, 1021, 1022, 1009, 1125, 1362, 1050, 1311, 1025,
   1105, 1395, 1027, 1152, 1029, 1030, 1077, 1000, 1010,
   1031, 1026, 1132, 1328, 1094, 1035, 1107, 1014, 1043,
   1036, 1038, 1493, 1108, 1492, 1490, 1041, 1040, 1500,
   1044, 1109, 1078, 1091, 1224, 1046, 1419, 1110, 1081,
   1065, 1111, 1404, 1112, 1095, 1115])

ALL_OBO_ONTS = Set.new([1016, 1041, 1062, 1000, 1065, 1099, 1078, 1007, 1024,
   1257, 1135, 1049, 1070, 1108, 1114, 1044, 1005, 1152,
   1063, 1043, 1064, 1110, 1030, 1029, 1144, 1125, 1023,
   1021, 1046, 1051, 1037, 1107, 1081, 1048, 1050, 1047,
   1036, 1109, 1022, 1014, 1224, 1095, 1042, 1013, 1311,
   1370, 1027, 1011, 1010, 1015, 1090, 1038, 1132, 1328,
   1019, 1067, 1069, 1026, 1112, 1091, 1017, 1245, 1222,
   1105, 1040, 1008, 1150, 1009, 1094, 1025, 1035, 1012,
   1115, 1001, 1006, 1077, 1085, 1031, 1395, 1397, 1404,
   1419, 1490, 1498, 1506, 1507, 1517, 1520, 1535, 1536,
   1539, 1544, 1545, 1555, 1568, 1574, 1575, 1583, 1584,
   1585, 1587, 1614, 1621, 1632, 1659, 1679, 1680, 1682,
   1689, 1700, 3000])


### Conversion methods ###

def uri_prefix(ontology_id, term_id)
    ontology_id = ontology_id.to_i
    prefix = term_id.split(/_[^_]+$/).to_s
    mod_code = term_id
    if OWN_URI_SCHEME_ONTS.include?(ontology_id)
        # Category 1: Ontologies that have their own URI scheme
        uri = "http://www.cellcycleontology.org/ontology/owl/" + prefix + "#" + mod_code
    elsif NEW_PURL_ONTS.include?(ontology_id)
        # Category 2: The ontologies have transitioned to the new scheme such as (CHEBI and PRO)
        # The url will be in the form: http://purl.obolibrary.org/obo/prefix_xxxxx
        uri = nil
    elsif LEGACY_PURL_ONTS.include?(ontology_id)
        # Category 3: Some ontologies use the "legacy" purls of the form:
        # http://purl.org/obo/owl/<prefix>#<prefix>_xxxxx
        uri = "http://purl.org/obo/owl/" + prefix + "#" + mod_code
    else
        # Category 4: The ontologies have no URIs. We create a default URI of
        # the form: http://purl.bioontology.org/ontology/PREFIX/PREFIX_xxxx
        uri = "http://purl.bioontology.org/ontology/" + prefix + "/" + mod_code
    end
    uri
end

# This will take a URI and grab the id portion, essentially the piece after the last slash
def last_path(uri)
  uri.match(/[^\/]+$/).to_s
end


### Main logic ###

URI_POS = options[:uriPos]
ONT_ID_POS = options[:ontPos]
API_KEY = "XXXX"

tmpfile = Tempfile.new("mapping_clean")
error_nodes = {}
count = 0
File.open(path, 'r') do |file|
    file.each_line do |line|
        split_line = line.split("\t")

        count += 1
        puts count if count % 10000 == 0 if SHOW_COUNT

        # Skip non-obo ontologies
        if !ALL_OBO_ONTS.include?(split_line[ONT_ID_POS].to_i)
            tmpfile.puts line
            next
        end

        new_uri = uri_prefix(split_line[ONT_ID_POS], last_path(split_line[URI_POS]))
        if new_uri
            split_line[URI_POS] = new_uri
            tmpfile.puts split_line.join("\t")
            if ENABLE_NEW_URI_TESTING
                # Test the generated URI if we haven't already tested it
                if error_nodes[split_line[ONT_ID_POS]].nil?
                    res = Net::HTTP.get_response(URI("http://rest.bioontology.org/bioportal/concepts/#{split_line[4].strip}?apikey=#{API_KEY}&conceptid=#{CGI.escape(new_uri)}"))
                    error_nodes[split_line[ONT_ID_POS]] = [res.code, "http://rest.bioontology.org/bioportal/concepts/#{split_line[4].strip}?apikey=#{API_KEY}&conceptid=#{CGI.escape(new_uri)}" ]
                end
            end
        else
            tmpfile.puts line
        end
    end
end

# Close file for move
tmpfile_path = tmpfile.path
tmpfile.close

# Move the file into our start directory
FileUtils.mv(tmpfile_path, path.gsub(/\.[^\.]+$/, "") + "_fix_obo_uris.txt")

if ENABLE_NEW_URI_TESTING
  error_nodes.each do |row|
    pp row if row[1][0].to_i >= 400
  end
end

