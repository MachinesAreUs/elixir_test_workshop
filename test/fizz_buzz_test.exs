defmodule FizzBuzzTest do
  use ExUnit.Case
  import FizzBuzz

  @fizzbuzzes [15, 30, 45, 60, 75, 90]
  @buzzes     Enum.map(1..20, fn(x) -> x * 5 end) -- @fizzbuzzes
  @fizzes     Enum.map(1..33, fn(x) -> x * 3 end) -- @fizzbuzzes
  @others     Enum.to_list(1..100) -- (@fizzbuzzes ++ @buzzes ++ @fizzes)

  Enum.each(@fizzes, fn n ->
    @n n
    test "fizzes #{@n}" do
      assert fizz_buzz(@n) == "fizz"
    end
  end)

  Enum.each(@buzzes, fn n ->
    @n n
    test "buzzes #{@n}" do
        assert fizz_buzz(@n) == "buzz"
    end
  end)

  Enum.each(@fizzbuzzes, fn n ->
    @n n
    test "fizzbuzzesi #{@n}" do
      assert fizz_buzz(@n) == "fizzbuzz"
    end
  end)

  Enum.each(@others, fn n ->
    @n n
    test "others #{@n}" do
      res = fizz_buzz(@n) |> String.to_integer
      assert res == @n
    end
  end)
end

