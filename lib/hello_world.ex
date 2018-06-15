defmodule Example do
  @moduledoc """
  Documentation for Example.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello
      :world

  """
  def hello do
    IO.puts("Hello World!")
    :world
  end

  def main do
    IO.puts("Main")
  end

end
