defmodule AdventOfCode.Day2 do
  def total_paper_needed(input) do
    input = String.split(to_string(input), "\n")
    total_paper_needed(input, 0)
  end

  defp total_paper_needed([hd | tl], sum) do
    paper_needed_for_present = cond do
      is_valid_size_format(hd) -> paper_needed_for_present(hd)
      !is_valid_size_format(hd) -> 0
    end

    total_paper_needed(tl, sum + paper_needed_for_present)
  end

  defp total_paper_needed([], sum), do: sum

  defp is_valid_size_format(input) do
    # Could also check that remainder of string can convert to integers
    only_x = String.replace(input, ~r/[^x]/, "", global: true)
    String.length(only_x) == 2
  end

  def paper_needed_for_present(input) do
    [l, w, h] = String.split(to_string(input), "x")
    paper_needed_for_present(l, w, h)
  end

  defp paper_needed_for_present(l, w, h) do
    [{l, _}, {w, _}, {h, _}] = [
      Integer.parse(l),
      Integer.parse(w),
      Integer.parse(h)
    ]

    (2 * l * w) + (2 * w * h) + (2 * h * l)
  end
end
