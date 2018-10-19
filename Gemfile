source 'http://rubygems.org'

#-------------------- Applications Gems - Put here apllications gems -----------------------------------


#-------------------- Base Gems - Updated libs 09/2017 -----------------------------------
ruby "2.4.2"
# Rake is a Make-like program implemented in Ruby.
gem 'rake', '12.1.0' #11.2.2
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Pg is the Ruby interface to the {PostgreSQL RDBMS}
gem 'pg', '0.21.0'
# This is a JSON implementation as a Ruby extension in C.
gem 'json', '2.1.0'
# ActiveModel::Serializers allows you to generate your JSON in an object-oriented and convention-driven manner.
gem 'active_model_serializers', '0.10.6'
# Pagination lig
gem 'will_paginate', '3.1.0'
#  Middleware that will make Rack-based apps CORS compatible.
gem 'rack-cors', '1.0.2'
#--------------------------------------------------------------------------------

group :development, :test do
  # SimpleCov is a code coverage analysis tool for Ruby.
  gem 'simplecov', :require => false, :group => :test
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Better that debugs on IRB or Rails C. Debug: require 'pry'; binding.pry
  gem 'pry-meta'
  # testing framework for Rails
  gem 'rspec-rails', '3.6.0'
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners that test common Rails functionality. These tests would otherwise be much longer, more complex, and error-prone.
  gem 'shoulda-matchers', '3.1.2'
  # factory_bot provides a framework and DSL for defining and using factories - less error-prone, more explicit, and all-around easier to work with than fixtures.
  gem 'factory_bot_rails'
  # Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'faker'
  #Strategies for cleaning databases. Can be used to ensure a clean state for testing.
  gem 'database_cleaner', '1.5.3'
  # retry intermittently failing rspec examples
  gem 'rspec-retry', '0.5.6'
  # Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure. 
  gem 'awesome_print', '1.8'
end
