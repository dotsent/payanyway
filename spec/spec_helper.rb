ENV['RAILS_ENV'] ||= 'test'

require 'rubygems'
require 'bundler/setup'

require 'combustion'
Bundler.require :default, :development

Combustion.initialize! :action_controller, :action_view

require 'payanyway'
require 'rspec/rails'
require 'pry'
require 'simplecov'

SimpleCov.start

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end
