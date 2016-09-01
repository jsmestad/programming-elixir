defmodule MyList do

  # Map + Sum
  def mapsum([], _func) do
    0
  end

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end


  # Max
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


  # Ceaser
  def ceaser([], _n), do: []

  def ceaser([head|tail], n) when head+n <= ?z do
    [head+n, ceaser(tail, n)]
  end

  def ceaser([head|tail], n) do
    [head-26+n, ceaser(tail, n)]
  end

  # Span from `a` to `b`
  def span(a, b) when a == b, do: [b]
  def span(a, b) do
    [a | span(a+1, b)]
  end
end
