defmodule MyEnum do
  # Enum.all?(list, func)
  def all?(list, func), do: _all?(list, func, true)

  defp _all?(_list = [head | tail], func, flag) do
    flag and _all?(tail, func, func.(head))
  end
  defp _all?([], _, flag), do: flag

end