defmodule AdventOfCode.Day2Test do
  use ExUnit.Case
  doctest AdventOfCode.Day2

  test "calculates sq ft paper needed for one present" do
    {_, input} = File.read("test/input/day_2_input_1.txt")
    input = String.split(to_string(input), "\n")
    sq_ft_paper_needed = AdventOfCode.Day2.paper_needed_for_present(input)
    assert(sq_ft_paper_needed == 58)
  end

  test "sums up multiple presents split by new line" do
    {_, input} = File.read("test/input/day_2_input_2.txt")
    total_paper_needed = AdventOfCode.Day2.total_paper_needed(input)
    assert(total_paper_needed == 174)
  end

end
