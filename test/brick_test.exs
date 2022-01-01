defmodule BrickTest do
  use ExUnit.Case
  import Tetris.Brick

  test "create a new brick" do
    assert new_brick().name == :i
  end

  test "creates a random brick" do
    actual = new_random()

    assert actual.name in  [:i, :l, :z, :t, :o]
  end

  def new_brick, do: new()
end
