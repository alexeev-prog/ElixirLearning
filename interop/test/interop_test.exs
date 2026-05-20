defmodule InteropTest do
  use ExUnit.Case
  doctest Interop

  test "greets the world" do
    assert Interop.hello() == :world
  end
end
