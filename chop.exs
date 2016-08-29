defmodule Chop do
  def guess(answer, low..high) when answer == div(low+high, 2) do
    IO.puts "Is it #{answer}?"
    IO.puts "Yes, it's #{answer}"
  end

  def guess(answer, low..high) when answer < div(low+high, 2) do
    IO.puts "Is it #{div(low+high, 2)}?"
    guess(answer, low..div(low+high, 2)) 
  end

  def guess(answer, low..high) when answer > div(low+high, 2) do
    IO.puts "Is it #{div(low+high, 2)}?"
    guess(answer, div(low+high,2)..high)
  end
end
