defmodule Username do
  def sanitize(username) do
    sanitize(username, [])
  end

  defp sanitize([head | tail], result) do
    case head do
      head when head >= ?a and head <= ?z -> sanitize(tail, [head | result])

      ?_ -> sanitize(tail, [head | result])

      ?ä -> sanitize(tail, [?e, ?a]  ++ result)

      ?ö -> sanitize(tail, [?e, ?o]  ++ result)

      ?ü -> sanitize(tail, [?e, ?u]  ++ result)

      ?ß -> sanitize(tail, [?s, ?s]  ++ result)

      _ ->  sanitize(tail, result)
    end
  end

  defp sanitize([], result), do: Enum.reverse(result)
end
