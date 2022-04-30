defmodule KitchenCalculator do
  def get_volume({_measure,volume}), do: volume

  def to_milliliter({:cup,volume}), do: to_milliliter(volume * 240)
  def to_milliliter({:fluid_ounce,volume}), do: to_milliliter(volume * 30)
  def to_milliliter({:teaspoon,volume}), do: to_milliliter(volume * 5)
  def to_milliliter({:tablespoon,volume}), do: to_milliliter(volume * 15)
  def to_milliliter({:milliliter,volume}), do: to_milliliter(volume)
  def to_milliliter(volume), do: {:milliliter,volume}

  def from_milliliter({_ml,volume}, :cup), do: {:cup, volume / 240}
  def from_milliliter({_ml,volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30}
  def from_milliliter({_ml,volume}, :teaspoon), do: {:teaspoon, volume / 5}
  def from_milliliter({_ml,volume}, :tablespoon), do: {:tablespoon, volume / 15}
  def from_milliliter({_ml,volume}, _convert_to), do: {:milliliter, volume}

  def convert(volume_pair, unit) do
  volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
