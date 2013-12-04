#!/usr/bin/env ruby

require 'optparse'
require 'set'
require 'tempfile'
require 'fileutils'
require 'cgi'
require 'open-uri'
require 'net/http'
#require 'pp'


options = {}

# The default positions in a SPARQL dump file for URI mappings.
options[:uriPos] = 0
options[:ontPos] = 1
options[:verPos] = 2

OptionParser.new do |opts|
    opts.banner = "Usage: mapping_uriChecker.rb [options]"
    opts.on("-p", "--path [PATH]", "Specify path") do |p|
        options[:path] = p
    end

    opts.on("-u", "--uriPos [INT]", "Zero-based-index of URI in delimited text line.") do |u|
        options[:uriPos] = Integer(u)
    end

    opts.on("-o", "--ontPos [INT]", "Zero-based-index of ontology virtual ID in delimited text line.") do |o|
        options[:ontPos] = Integer(o)
    end

    opts.on("-v", "--verPos [INT]", "Zero-based-index of ontology version ID in delimited text line.") do |o|
        options[:ontPos] = Integer(o)
    end

    opts.on("-c", "--counts", "Display counts as processing is run") do |c|
        options[:counts] = c
    end

    opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
    end
end.parse!

path = options[:path].nil? ? ARGV[0] : options[:path]
raise "Must specify a path for mapping terms triplestore output file" if path.nil?

# Show counts as the processing progresses
SHOW_COUNT = options[:counts]

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
ONT_VRT_POS = options[:ontPos]
ONT_VER_POS = options[:verPos]

for term in $(cat uriPrefixTerms.txt); do
# Bioportal REST documentation.
# Alt Virtual Signature (always uses most recent version of the ontology):
# ./virtual/ontology/{ontology virtual id}?conceptid={uri-encoded concept id} 

restHost = "http://rest.bioontology.org"
restPath = "/bioportal/virtual/ontology/"
apiKey = "XXXX"

ontBioportalURL = "http://bioportal.bioontology.org/ontologies/"

nodes_log = {}
nodes_err = {}
count = 0
File.open(path, 'r') do |file|
    file.each_line do |line|
        count += 1
        puts count if count % 10000 == 0 && SHOW_COUNT

        split_line = line.split("\t")
        termURL = split_line[URI_POS].strip
        ontVrtID = split_line[ONT_VRT_POS].strip
        ontVerID = split_line[ONT_VER_POS].strip
        ontURL = "#{ontBioportalURL}#{ontVrtID}"

        # Test the URI if we haven't already tested this ontology.  Use
        # the ontology virtual ID for any REST calls (ontVrtID).
        if nodes_log[ontVrtID].nil?
            conceptID = "conceptid=#{CGI.escape(termURL)}"
            restURL = "#{restHost}#{restPath}#{ontVrtID}?#{conceptID}&apikey=#{apiKey}&light=1&norelations=1"
            res = Net::HTTP.get_response(URI(restURL))
            nodes_log[ontVrtID] = [res.code, termURL, ontURL, restURL]
            if res.code.to_i >= 400
                nodes_err[ontVrtID] = [res.code, termURL, restURL]
                puts nodes_err[ontVrtID].inspect
            end
        end
    end
end

# Log the URIs that failed.
tmpfile = Tempfile.new("mapping_checkURI")
nodes_log.each do |row|
    #pp row if row[1][0].to_i >= 400
    tmpfile.puts row.inspect
end
# Close file for move
tmpfile_path = tmpfile.path
tmpfile.close

# Move the file into our start directory
FileUtils.mv(tmpfile_path, path.gsub(/\.[^\.]+$/, "") + "_checkURI.txt")

