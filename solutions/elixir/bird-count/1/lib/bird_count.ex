defmodule BirdCount do
  def today(list), do: List.first(list)

  def increment_day_count([]), do: [1]
  
  def increment_day_count([head | tail]) do 
    [head + 1 | tail]
  end

  def has_day_without_birds?(list) do
    Enum.any?(list, &(&1 == 0))
  end

  def total(list), do: Enum.sum(list)

  def busy_days(list) do
    List.foldl(list, 0, fn x,acc -> 
      if x >= 5 do
        acc + 1
      else
        acc
      end
    end)
  end
end
