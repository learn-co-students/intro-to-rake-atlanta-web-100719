ENV["SINATRA_ENV"] = "test"

require_relative '../config/environment'
require 'rack/test'
require 'rake'


RSpec.configure do |config|

  config.color = true

  config.order = 'default'
end