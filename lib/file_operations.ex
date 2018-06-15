defmodule FileUtil do

  def read(filename) do
    File.read(filename)
  end

  def convertToUpper(word) do
    {:ok,
    word
    |> String.upcase()
  }
  end

  def read_using_with(file) do
    with {:ok, result1} <- read(file),
        {:ok, result2} <- convertToUpper(result1)
     do
       result2
     else
        {:error, _} -> "With error - No such file!!"
     end
  end

  def read_using_case(file) do
    { status, binary } = read(file)
    case status do
      :ok -> binary
      :error -> "Case error - No such file!"
    end
  end
end

IO.inspect(FileUtil.read_using_with("sample.txt"))
IO.inspect(FileUtil.read_using_with("sample1.txt"))

IO.inspect(FileUtil.read_using_case("sample.txt"))
IO.inspect(FileUtil.read_using_case("sample2.txt"))
