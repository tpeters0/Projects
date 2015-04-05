class OceanGrid < ActiveRecord::Base
  has_many :targets
  validates :id, :presence => true


  def print_grid
    column_labels = ["   ", " 1 ", " 2 ", " 3 ", " 4 "," 5 "," 6 "," 7 "," 8 "," 9 ", " 10", ""]
    row_labels = %w(A B C D E F G H I J)

    puts("")
    puts column_labels.join("|")
    puts("---+" * 11)
    row_counter = 1
    while row_counter <= 10
      col_counter = 1
      print(" #{row_labels[row_counter - 1]} |")


      while col_counter <= 10
        current_target = targets.find_by(row_num: row_counter, col_num: col_counter)
        print(current_target.to_s)
        col_counter += 1
      end
      print("\n" + "---+" * 11 + "\n")
      row_counter += 1
    end
  end

  def clear_grid
    targets.update_all(called: false)
  end
end


#
#
# class Person
#   def full_name
#     first_name + " " + last_name
#   end
# end
