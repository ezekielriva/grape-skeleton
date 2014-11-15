ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'minitest/spec'
require 'minitest/autorun'
require 'grape'
require 'logger'
Grape::API.logger = Logger.new('/dev/null')

Dir["./api/*.rb"].each {|file| require file }

include Rack::Test::Methods
