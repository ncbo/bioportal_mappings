log_enable(3,1);
DB.DBA.TTLP_MT (file_to_string_output ('MAPPING_FILE_REGEX'), '', 'http://protege.stanford.edu/ontologies/mappings/loom', 64, 0);
checkpoint;

