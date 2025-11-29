defmodule BasicappTest do
  use ExUnit.Case
  doctest Basicapp

  test "greets the world" do
    assert Basicapp.hello() == :world
  end
end
