defmodule AdventOfCode.Day1 do
  def floor_count(input) do
    floor_count(String.codepoints(input), 0)
  end

  def first_time_to_basement(input) do
    first_time_to_basement(String.codepoints(input), 0, 1)
  end

  # Private

  defp floor_count([hd | tl], floor) do
    cond do
      hd == "(" -> floor_count(tl, floor + 1)
      hd == ")" -> floor_count(tl, floor - 1)
      true -> floor_count(tl, floor)
    end
  end

  defp floor_count([], floor), do: floor

  defp floor_count([], count), do: count

  defp first_time_to_basement([hd | tl], floor, index) do
    cond do
      floor == -1 -> index + 1
      hd == "(" -> first_time_to_basement(tl, floor + 1, index + 1)
      hd == ")" -> first_time_to_basement(tl, floor - 1, index + 1)
      true -> first_time_to_basement(tl, floor, index + 1)
    end
  end
end
