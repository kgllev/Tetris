defmodule BrickTest do
  use ExUnit.Case
  import Tetris.Brick
  import Tetris.Points

  test "create a new brick" do
    assert new_brick().name == :i
  end

  test "creates a random brick" do
    actual = new_random()

    assert actual.name in [:i, :l, :z, :t, :o]
  end

  test "should manipulate brick" do
    actual =
      new_brick()
      |> left()
      |> right()
      |> right()
      |> down()
      |> spin_90()
      |> spin_90()

    assert actual.location == {41, 1}
    assert actual.rotation == 180
    assert actual.reflection in [false, true]
  end

  test "should translate a list of points"do

  end

  def new_brick, do: new()
end
