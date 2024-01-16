# Load the Rails application.
require_relative "application"
require 'oyencov'

ENV['OYENCOV_ENV']='production'
# Initialize the Rails application.
Rails.application.initialize!
