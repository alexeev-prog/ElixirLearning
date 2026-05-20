defmodule MySigils do
  def sigil_u(string, []), do: String.upcase(string)
  def sigil_u(string, [?f]), do: String.first(string)
  def sigil_u(string, [?l]), do: String.last(string)

  def sigil_i(string, []), do: String.to_integer(string)
  def sigil_i(string, [?n]), do: -String.to_integer(string)
end
