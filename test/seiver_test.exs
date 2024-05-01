defmodule SeiverTest do
  use ExUnit.Case
  doctest Seiver

  test "greets the world" do
    assert Seiver.hello() == :world
  end
end
