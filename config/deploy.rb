require 'capistrano/s3'
require "yaml"
s3 = YAML::load_file('amazons3.yml')
set :bucket, s3["bucket"]
set :access_key_id, s3["access_key_id"]
set :secret_access_key, s3["secret_access_key"]
