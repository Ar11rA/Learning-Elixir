defmodule ExamplePipe do
  def main(input) do
    input
    |> convertToList
    |> letterExist("f")
  end
def convertToList(input) do
    String.split(input, "", trim: true)
  end
def letterExist(input, letter) do
    Enum.member?(input, letter)
  end
end

IO.puts ExamplePipe.main("asdf")
