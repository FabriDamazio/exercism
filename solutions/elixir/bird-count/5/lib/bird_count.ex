defmodule BirdCount do
  def today([]), do: nil

  def today([head | _tail]), do: head

  def increment_day_count([]), do: [1]
  
  def increment_day_count([head | tail]) do 
    [head + 1 | tail]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?([head | tail]) do
    if head==0 do
      true
    else
      has_day_without_birds?(tail)
    end
  end

  def total([]), do: 0

  def total([total]), do: total

  def total([head | tail]) do
    total(tail, head)
  end

  defp total([head | tail], total) do
    total(tail, total + head)
  end

  defp total([], total), do: total

  def busy_days([]), do: 0

  def busy_days([x]) do
    if x >= 5 do
      1
    else
      0
    end    
  end

  def busy_days(list) do
    busy_days(list, 0)
  end

  defp busy_days([head | tail], total) do
    if head >= 5 do
      busy_days(tail, total + 1)
    else
      busy_days(tail, total)
    end
  end

  defp busy_days([], total), do: total
end
