defmodule MyList do
  def mapsum([], _func) do
    0
  end

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max(list) do
    do_max(list, 0)
  end

  defp do_max([], highest) do
    highest
  end

  defp do_max([head | tail], highest) when head > highest do
    do_max(tail, head)
  end

  defp do_max([head | tail], highest) when head <= highest do
    do_max(tail, highest)
  end

end
