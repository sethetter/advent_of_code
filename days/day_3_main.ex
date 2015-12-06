IO.puts("------- Day 3 -------")

{_, day_3_input} = File.read("input/day_3.txt")

unique_destinations = AdventOfCode.Day3.unique_destinations_from_movements(day_3_input)
IO.puts("Total unique houses visited: #{unique_destinations}")
