require 'capistrano/s3'
require "yaml"
jekyllc = YAML::load_file('_config.yml')
set :bucket, jekyllc["cap"]["bucket"]
set :access_key_id, jekyllc["cap"]["access_key_id"]
set :secret_access_key, jekyllc["cap"]["secret_access_key"]
