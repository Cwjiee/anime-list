# Load the Rails application.
require_relative "application"
require 'oyencov'

ENV['OYENCOV_MODE']='production'
# Initialize the Rails application.
Rails.application.initialize!
