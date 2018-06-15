defmodule ExampleWith do

  def square(num) do
    {:ok, num * num}
  end

  def half(num) do
    {:ok, num / 2}
  end

  def add_five(num) do
    {:ok, num + 5}
  end

  def triple(num) do
    {:ok, num * 2}
  end

  def main(num) do
    with {:ok, result1} <- square(num),
      {:ok, result2} <- half(result1),
      {:ok, result3} <- triple(result2),
      {:ok, result4} <- add_five(result3)
     do
        result4
     else
        {:error, _} -> "Oops, something went wrong"
     end
  end

end

IO.puts(ExampleWith.main(2))

