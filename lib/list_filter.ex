require Integer

defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn elem -> convert_string_to_number(elem) end)
    |> Enum.filter(fn elem -> !is_nil(elem) end)
    |> Enum.filter(fn elem -> Integer.is_odd(elem) end)
    |> Enum.count()
  end

  defp convert_string_to_number(elem) do
    response = Integer.parse(elem, 10)

    case response do
      {number, _} -> number
      :error -> nil
    end
  end
end
