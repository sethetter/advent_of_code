IO.puts("------- Day 3 -------")

{_, day_3_input} = File.read("input/day_3.txt")

unique_destinations = AdventOfCode.Day3.unique_destinations_from_movements(day_3_input)
IO.puts("Total unique houses visited: #{unique_destinations}")

[santa_movements, robot_movements] = AdventOfCode.Day3.divide_movements(day_3_input)

santa_destinations = AdventOfCode.Day3.track_movements(santa_movements)
robot_destinations = AdventOfCode.Day3.track_movements(robot_movements)

combined_destinations = santa_destinations ++ robot_destinations

unique_combined = AdventOfCode.Day3.unique_destinations(combined_destinations)
IO.puts("Total unique houses visited combined: #{unique_combined}")
