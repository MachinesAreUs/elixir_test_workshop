defmodule FizzBuzzTest do
  use ExUnit.Case

  @fizzbuzzes [15, 30, 45, 60, 75, 90]
  @fizzes Enum.map(1..33, fn(x) -> x * 3 end) -- @fizzbuzzes
  @buzzes Enum.map(1..20, fn(x) -> x * 5 end) -- @fizzbuzzes
  @others Enum.to_list(1..100) -- (@fizzbuzzes ++ @fizzes ++ @buzzes)

  Enum.each(@fizzes, fn(n) ->
    @n n
    test "fizzes: #{@n}" do
      assert FizzBuzz.fizzbuzz(@n) == "fizz"
    end
  end)

  Enum.each(@buzzes, fn(n) ->
    @n n
    test "buzzes: #{@n}" do
      assert FizzBuzz.fizzbuzz(@n) == "buzz"
    end
  end)

  Enum.each(@fizzbuzzes, fn(n) ->
    @n n
    test "fizzbuzzes: #{@n}" do
      assert FizzBuzz.fizzbuzz(@n) == "fizzbuzz"
    end
  end)

  Enum.each(@others, fn(n) ->
    @n n
    test "others: #{@n}" do
      assert FizzBuzz.fizzbuzz(@n) == Integer.to_string(@n)
    end
  end)
end
