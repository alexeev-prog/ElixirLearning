defmodule SimplemathTest do
  use ExUnit.Case
  doctest Simplemath

  test "greets the world" do
    assert Simplemath.hello() == :world
  end
end
