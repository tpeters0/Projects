#experiment
column_lables = ["   ", " 1 ", " 2 ", " 3 ", " 4 "," 5 "," 6 "," 7 "," 8 "," 9 ", " 10", ""]
row_A =         [" A ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_B =         [" B ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_C =         [" C ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
# row_D = []
# row_E = []
# row_F = []
# row_G = []
# row_H = []
# row_I = []
# row_J = []

ocean_hash = {row_A => row_A,
row_B => row_B,
row_C => row_C
}

puts ""
puts column_lables.join("|")
puts("--" * 22)
puts ocean_hash[row_A].join("|").to_s
puts("--" * 22)
puts ocean_hash[row_B].join("|").to_s
puts("--" * 22)
puts ocean_hash[row_C].join("|").to_s
puts("")
