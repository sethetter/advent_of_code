defmodule AdventOfCode.Day1Test do
  use ExUnit.Case
  doctest AdventOfCode.Day1

  test "#floor_count :: counts ( as going up a floor" do
    {_, input} = File.read("test/day_1_input_1.txt")
    floor = AdventOfCode.Day1.floor_count(input)
    assert(floor == 4)
  end

  test "#floor_count :: counts ) as going down a floor" do
    {_, input} = File.read("test/day_1_input_2.txt")
    floor = AdventOfCode.Day1.floor_count(input)
    assert(floor == -5)
  end

  test "#first_time_to_basement :: returns current index once floor is -1" do
    {_, input} = File.read("test/day_1_input_2.txt")
    in_basement_at = AdventOfCode.Day1.first_time_to_basement(input)
    assert(in_basement_at == 3)
  end
end
