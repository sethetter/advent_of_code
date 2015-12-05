defmodule AdventOfCode.Day1 do
  def floor_count(input) do
    floor_count(String.codepoints(input), 0)
  end

  defp floor_count([hd | tl], count) do
    cond do
      hd == "(" -> floor_count(tl, count + 1)
      hd == ")" -> floor_count(tl, count - 1)
      true -> floor_count(tl, count)
    end
  end

  defp floor_count([], count), do: count
end
