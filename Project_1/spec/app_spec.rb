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

# nice test.
# Going forward in this program, you would want to develop tests for your models in your lib folder and some of your UI code in your app.rb
