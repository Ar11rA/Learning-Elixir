defmodule AnotherWith do

  def one() do
    opts = %{width: 10, height: 15}
    with {:ok, width} <- Map.fetch(opts, :width),
         {:ok, height} <- Map.fetch(opts, :height),
     do: {:ok, width * height}
  end

  def two() do
    opts = %{width: 10}
    with {:ok, width} <- Map.fetch(opts, :width),
         {:ok, height} <- Map.fetch(opts, :height),
      do: {:ok, width * height}
    else
      :error -> {:error, "Missing atom"}
  end

end

IO.inspect(AnotherWith.one())
IO.inspect(AnotherWith.two())

