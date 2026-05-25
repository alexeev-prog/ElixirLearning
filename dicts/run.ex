# Test the functions
map = %{a: 1, b: 2, c: 42}
IO.puts("Sum of keys :a and :b in map #{inspect(map)}: #{Dicts.keys_sum(map, :a, :b)}")
# => 3
IO.puts("Sum of keys :a and :b in map #{inspect(map)}: #{Dicts.keys_sum(map, :a, :b)}")
# => 3
IO.puts("Sum of keys :a and :d in map #{inspect(map)}: #{Dicts.keys_sum(map, :a, :d)}")
# => 1

map = %{one: 1, five: 5, ten: 10}

IO.puts(
  "Product of keys :one and :five in map #{inspect(map)}: #{Dicts.keys_product(map, :one, :five)}"
)

# => 5
IO.puts(
  "Product of keys :five and :ten in map #{inspect(map)}: #{Dicts.keys_product(map, :five, :ten)}"
)

# => 50
IO.puts(
  "Product of keys :one and :ten in map #{inspect(map)}: #{Dicts.keys_product(map, :one, :ten)}"
)

# => 10

map1 = %{a: 1, b: 2}
map2 = %{c: 3, d: 4}

IO.puts(
  "Copy key a from #{inspect(map1)} to #{inspect(map2)}: #{inspect(Dicts.copy_key(map1, map2, :a, 42))}"
)

# => %{c: 3, d: 4, a: 1}
IO.puts(
  "Copy key b from #{inspect(map1)} to #{inspect(map2)}: #{inspect(Dicts.copy_key(map1, map2, :b, 42))}"
)

# => %{c: 3, d: 4, b: 2}

IO.puts(
  "Copy key e (default: 42) from #{inspect(map1)} to #{inspect(map2)}: #{inspect(Dicts.copy_key(map1, map2, :e, 42))}"
)

# => %{c: 3, d: 4, e: 42}
IO.puts(
  "Copy key e (default: 42) from #{inspect(map2)} to #{inspect(map1)}: #{inspect(Dicts.copy_key(map2, map1, :e, 42))}"
)

# => %{a: 1, b: 2, e: 42}
