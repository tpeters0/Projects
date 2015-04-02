require 'active_record'
require_relative 'connection'
require_relative '../lib/target'
require_relative '../lib/ship'
require_relative '../app'

Target.destroy_all
Ship.destroy_all

targets = Target.create([
  {row: "A", row_num: 1, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "A", row_num: 1, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "B", row_num: 2, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "C", row_num: 3, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "D", row_num: 4, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "E", row_num: 5, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "F", row_num: 6, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "G", row_num: 7, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "H", row_num: 8, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "I", row_num: 9, col_num: 10, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 1, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 2, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 3, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 4, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 5, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 6, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 7, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 8, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 9, shown_char: " ~ ", ship_id: nil},
  {row: "J", row_num: 10, col_num: 10, shown_char: " ~ ", ship_id: nil}
  ])








# OceanGrid.destroy_all
# OceanSpot.destroy_all
# Ship.destroy_all

  # ocean_grids = OceanGrid.create([
  #   {col_header: 1, row_arrays: }
  #   ])

    # adams_students = Instructor.find_by(name: "Adam").student.create([
    #   {name: "Kevin", email: "kevin@email.com"},
    #   {name: "Tyler", email: "tyler@email.com"}
    #   ])
  #
  #
  # ocean_spots = OceanSpot.create([
  #       {ship_present: false, symbol: " ~ ", row_name: "A", column_num: "1", ships_id: nil, ocean_id: 1},
  #
  #       ])
