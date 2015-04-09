require 'active_record'
require_relative 'connection'
require_relative '../lib/target'
require_relative '../lib/ship'
require_relative '../lib/ocean_grid'

Target.destroy_all
Ship.destroy_all
OceanGrid.destroy_all

board = OceanGrid.create

row_counter = 1
while row_counter <= 10
  col_counter = 1
  while col_counter <= 10
    if row_counter == 3 and col_counter < 6
      hit = true
    elsif row_counter > 4 and col_counter == 9
      hit = true
    else
      hit = false
    end
    Target.create(ocean_grid: board, row_num: row_counter, col_num: col_counter, hit: hit, called: false)
    puts("created target at #{row_counter}, #{col_counter}" )
    col_counter += 1
  end
  row_counter += 1
end

# This is interesting way of coding the seed file. I like it. I woulda just hardcoded the targets, this is far more elegant. Although I would look into the .times method

# board.targets.find_by(row_num: row_counter, col_num: col_counter)
