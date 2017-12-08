defmodule MixwarsTest do
  use ExUnit.Case
  doctest Mixwars

  test "get kata by slug" do
    kata = Mixwars.get_kata("valid-braces")

    assert kata["id"] == "5277c8a221e209d3f6000b56"
  end

  test "get kata by id" do
    kata = Mixwars.get_kata("5277c8a221e209d3f6000b56")

    assert kata["id"] == "5277c8a221e209d3f6000b56"
  end
end
