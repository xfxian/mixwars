defmodule MixwarsTest do
  use ExUnit.Case
  doctest Mixwars

  test "greets the world" do
    assert Mixwars.hello() == :world
  end
end
