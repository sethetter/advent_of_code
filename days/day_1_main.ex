IO.puts("------- Day 1 -------")

{_, day_1_input} = File.read("input/day_1.txt")

floor_count = AdventOfCode.Day1.floor_count(day_1_input)
IO.puts("Floor stopped on was: #{floor_count}")

first_time_to_basement = AdventOfCode.Day1.first_time_to_basement(day_1_input)
IO.puts("First time to the basement is at index: #{first_time_to_basement}")
