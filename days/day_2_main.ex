IO.puts("------- Day 2 -------")

{_, day_2_input} = File.read("input/day_2.txt")

paper_needed = AdventOfCode.Day2.total_paper_needed(day_2_input)
IO.puts("Total paper needed is: #{paper_needed} sq ft")

ribbon_needed = AdventOfCode.Day2.total_ribbon_needed(day_2_input)
IO.puts("Total paper needed is: #{ribbon_needed} ft")
