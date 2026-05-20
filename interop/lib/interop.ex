defmodule Interop do
  def hours_to_milliseconds(hours) do
    :timer.hours(hours)
  end
end
