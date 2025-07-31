defmodule KitchenCalculator do
  def get_volume({_unit, volume}), do: volume

  def to_milliliter({unit, volume}) do
    case unit do
      :cup -> {:milliliter, volume * 240}
      :fluid_ounce -> {:milliliter, volume * 30}
      :teaspoon -> {:milliliter, volume * 5}
      :tablespoon -> {:milliliter, volume * 15}
      :milliliter -> {:milliliter, volume}
    end
  end

  def from_milliliter({:milliliter, volume}, unit) do
    case unit do
      :cup -> {unit, volume / 240}
      :fluid_ounce -> {unit, volume / 30}
      :teaspoon -> {unit, volume / 5}
      :tablespoon -> {unit, volume / 15}
      :milliliter -> {unit, volume}
    end
  end

  def convert(volume_pair, target) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(target)
  end
end
