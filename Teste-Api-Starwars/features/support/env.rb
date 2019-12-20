require 'httparty'
require 'json'

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/config/config.yml')