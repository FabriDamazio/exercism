defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list), do: Enum.drop(list, 1)

  def first(list), do: List.first(list)

  def count(list), do: Enum.count(list)

  def functional_list?(list), do: "Elixir" in list
end
