defmodule AdventOfCode.Day1Test do
  use ExUnit.Case
  doctest AdventOfCode.Day1

  test "counts ( as going up a floor" do
    {_, input} = File.read("test/day_1_input_1.txt")
    floor = AdventOfCode.Day1.floor_count(input)
    assert(floor == 4)
  end

  test "counts ) as going down a floor" do
    {_, input} = File.read("test/day_1_input_2.txt")
    floor = AdventOfCode.Day1.floor_count(input)
    assert(floor == -5)
  end
end
