defmodule MyMathTest do
  use ExUnit.Case

  test "almost equal" do
    assert_in_delta MyMath.reciprocal(7), 0.142857, 1.0e-6
  end

  test "raising ArithmeticError" do
    assert_raise ArithmeticError, fn -> MyMath.reciprocal 0 end
  end
end