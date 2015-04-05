require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/target'
require_relative 'lib/ship'
require_relative 'lib/ocean_grid'


def welcome
  puts("         Welcome to Sink, Sank, Sunk")
end

def instructions
  puts("In this game, you will choose coordinates to torpedo." "\n" "If a ship is there, you will score a hit.")
  puts("Try to hit all 5 segments of each of the two ships to sink them and win!")
end

def menu
  loop do
    puts
    puts "Please choose an option number:"
    puts "1. Play game"
    puts "2. Clear grid"
    puts "3. Quit"

      menu_input = gets().chomp
      board = OceanGrid.first

      if menu_input == "1"
        loop do
          board.print_grid
          get_coordinates
        end

      elsif menu_input == "2"

        board.clear_grid

      elsif menu_input == "3"
        puts "goodbye"
        break
        break
      end
    end
end

def get_coordinates
  puts "Enter M for menu or"
  puts("Enter the row letter that you want to target:")
  user_row = gets.chomp

    if user_row.upcase == "A"
      row_number = 1
    elsif user_row.upcase == "B"
      row_number = 2
    elsif user_row.upcase == "C"
      row_number = 3
    elsif user_row.upcase == "D"
      row_number = 4
    elsif user_row.upcase == "E"
      row_number = 5
    elsif user_row.upcase == "F"
      row_number = 6
    elsif user_row.upcase == "G"
      row_number = 7
    elsif user_row.upcase == "H"
      row_number = 8
    elsif user_row.upcase == "I"
      row_number = 9
    elsif user_row.upcase == "J"
      row_number = 10
    elsif user_row.upcase == "M"
      menu
    end

  if user_row.upcase != "M"
    puts("Enter the column number that you want to target:")
    column_number = gets.chomp
  end


  # puts("target at #{row_number}, #{column_number}" )
  target_cell = Target.find_by(row_num: row_number, col_num: column_number)
  target_cell.update(called: true)
  return target_cell

end


puts("\n" *5)
welcome
instructions
menu




# binding.pry
