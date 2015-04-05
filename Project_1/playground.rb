#experiment
column_labels = ["   ", " 1 ", " 2 ", " 3 ", " 4 "," 5 "," 6 "," 7 "," 8 "," 9 ", " 10", ""]


row_A =         [" A ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_B =         [" B ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_C =         [" C ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_D =         [" D ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_E =         [" E ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_F =         [" F ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_G =         [" G ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_H =         [" H ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_I =         [" I ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]
row_J =         [" J ", " ~ ", " ~ ", " ~ ", " ~ "," ~ "," ~ "," ~ "," ~ "," ~ ", " ~ ", ""]

ocean_hash = {row_A => row_A,
row_B => row_B,
row_C => row_C,
row_D => row_D,
row_E => row_E,
row_F => row_F,
row_G => row_G,
row_H => row_H,
row_I => row_I,
row_J => row_J
}

puts ""
puts column_labels.join("|")
puts("---+" * 11)
puts ocean_hash[row_A].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_B].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_C].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_D].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_E].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_F].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_G].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_H].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_I].join("|").to_s
puts("---+" * 11)
puts ocean_hash[row_J].join("|").to_s
puts("--" * 22)
puts ""

# puts "\e[44m  ~ ~ ~ ~ ~ ~ ~ ~"
# puts "\e[0m"
