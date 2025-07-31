defmodule Username do
  def sanitize(username) do
    sanitize(username, [])
  end

  defp sanitize([head | tail], result) do
    case head do
      head when head > 96 and head < 123 ->
        sanitize(tail, [head] ++ result)

      head when head == 95 ->
        sanitize(tail, [head] ++ result)

      head when head == ?ä ->
        sanitize(tail, [?e, ?a]  ++ result)

      head when head == ?ö ->
        sanitize(tail, [?e, ?o]  ++ result)

      head when head == ?ü ->
        sanitize(tail, [?e, ?u]  ++ result)

      head when head == ?ß ->
        sanitize(tail, [?s, ?s]  ++ result)

      _ ->
        sanitize(tail, result)
    end
  end

  defp sanitize([], result), do: Enum.reverse(result)
end
