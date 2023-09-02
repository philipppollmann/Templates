defmodule StandardprojectTest do
  use ExUnit.Case
  doctest Standardproject

  test "greets the world" do
    assert Standardproject.hello() == :world
  end
end
