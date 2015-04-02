require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/target'
require_relative 'lib/ship'


def welcome
  welcome = "Welcome to Sink, Sank, Sunk"
end

puts(welcome)
