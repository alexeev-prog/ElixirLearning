defmodule Helloworld do
  @moduledoc """
  Documentation for `Helloworld`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Helloworld.hello()
      :world

  """
  def hello do
    IO.puts("Hello World!")
  end

  def goodbye do
    IO.puts("Goodbye World!")
  end
end
