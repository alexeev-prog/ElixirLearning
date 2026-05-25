defmodule Dicts do
  def keys_sum(input_map, k1, k2) do
    Map.get(input_map, k1, 0) + Map.get(input_map, k2, 0)
  end

  def keys_product(input_map, k1, k2) do
    Map.get(input_map, k1, 1) * Map.get(input_map, k2, 1)
  end

  def copy_key(first_map, second_map, k1, defval) do
    first_value = Map.get(first_map, k1, defval)
    Map.put(second_map, k1, first_value)
  end
end
