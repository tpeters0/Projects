require_relative 'spec_helper'
require 'active_record'
# require_relative '../lib/ocean_grid'
require_relative '../lib/target'
require_relative '../lib/ship'
require_relative '../app'

describe 'welcome' do
  it ('should print welcome message') do
      expect(welcome).to_not eql(nil)
    end
end
