sentence = "$The quick brown fox jumps over the lazy dog$"
defmodule StringParser do
  def parse(sentence) do
    sentence
      |> String.split
      |> Enum.join(" ")
      |> String.replace(~r/[\| | \'| \& | \. | \( | \) | \{ \ | \} | \, | \-]+/, " ")
      |> String.replace(" ", "|")
      |> String.slice(0..-2) # remove last character
      |> String.slice(1..-1) # remove first character
      |> String.upcase       # convert to uppercase
    end

end

IO.puts StringParser.parse(sentence)

