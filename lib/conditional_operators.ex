a = 6
b = 6

s = cond do
  a + b == 5 -> 10
  a * b == 3 -> 15
  a / b == 1 -> 20
  a * b == 36 -> 25
end

s |> IO.inspect(label: "Value of s (cond)")

s = if a > 5 do
  10
else
  5
end

s |> IO.inspect(label: "Value of s (if else)")

s = case a > 5 do
  true -> case b < 5 do
    true -> 10
    false -> 15
    end
  false -> 5
end


s |> IO.inspect(label: "Value of s (case)")
