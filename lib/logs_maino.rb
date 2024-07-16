require "logs_maino/version"
require 'dotenv'
Dotenv.load
require 'sequel'
require_relative 'config/db'
require_relative 'models'
require_relative 'repositories'
require_relative 'modules/callable'
require_relative 'modules/resources'
require_relative 'services'
require_relative 'processor'


module LogsMaino
  class Error < StandardError; end
  # Your code goes here...
end
