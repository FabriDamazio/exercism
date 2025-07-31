defmodule Lasagna do
  @layer_prep_time 2
  
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time), do: expected_minutes_in_oven() - time

  def preparation_time_in_minutes(layers), do: @layer_prep_time * layers

  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + minutes
  end

  def alarm(), do: "Ding!"
end
