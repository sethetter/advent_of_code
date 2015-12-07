defmodule AdventOfCode.Day3Test do
  use ExUnit.Case
  doctest AdventOfCode.Day3

  test """
    #track_movements
    - returns coordinate list from movement info
  """ do
    {_, movement_list} = File.read("test/input/day_3_input_1.txt")
    coords = AdventOfCode.Day3.track_movements(movement_list)
    assert(coords == [[0,0], [1,0], [1,1], [0,1], [0,0]])
  end

  test """
    #unique_destinations
    - counts number of unique destinations from list of coordinates
  """ do
    {_, movement_list} = File.read("test/input/day_3_input_1.txt")
    coords = AdventOfCode.Day3.track_movements(movement_list)
    unique_destinations = AdventOfCode.Day3.unique_destinations(coords)
    assert(unique_destinations == 4)
  end

  test """
    #divide_movements
    - splits movement list in two by every other movement
  """ do
    {_, movement_list} = File.read("test/input/day_3_input_1.txt")
    [santa, robot] = AdventOfCode.Day3.divide_movements(movement_list)
    assert(santa == "><")
    assert(robot == "^v")
  end
end
