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

  def total_ribbon_needed(input) do
    input = String.split(to_string(input), "\n")
    total_ribbon_needed(input, 0)
  end

  defp total_ribbon_needed([hd | tl], sum) do
    ribbon_needed = cond do
      is_valid_size_format(hd) -> ribbon_needed(hd)
      !is_valid_size_format(hd) -> 0
    end

    total_ribbon_needed(tl, sum + ribbon_needed)
  end

  defp total_ribbon_needed([], sum), do: sum

  def ribbon_needed(input) do
    [l, w, h] = String.split(to_string(input), "x")
    ribbon_needed(l, w, h)
  end

  defp ribbon_needed(l, w, h) do
    [{l, _}, {w, _}, {h, _}] = [
      Integer.parse(l),
      Integer.parse(w),
      Integer.parse(h)
    ]

    smallest_perimeter = find_smallest_perimeter(l, w, h)
    cubic_volume = l * w * h

    smallest_perimeter + cubic_volume
  end

  defp find_smallest_perimeter(l, w, h) do
    perimeter_1 = (2 * l) + (2 * w)
    perimeter_2 = (2 * w) + (2 * h)
    perimeter_3 = (2 * h) + (2 * l)

    Enum.min([perimeter_1, perimeter_2, perimeter_3])
  end

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

    smallest_side = find_smallest_side(l, w, h)

    (2 * l * w) + (2 * w * h) + (2 * h * l) + smallest_side
  end

  defp find_smallest_side(l, w, h) do
    side_1 = (l * w)
    side_2 = (w * h)
    side_3 = (h * l)

    Enum.min([side_1, side_2, side_3])
  end
end
