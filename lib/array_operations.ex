original_array = [1, 4, 5, 2, 3]

doubled_array = original_array
|> Enum.map(fn(x) -> x * 2 end)
|> Enum.sort

min_element = Enum.min(doubled_array)
max_element = Enum.max(doubled_array)
sum_doubled_array = Enum.reduce(doubled_array, fn(x, acc) -> x + acc end)

are_all_numbers = Enum.all?(original_array, fn(num) -> is_number(num) end)
is_any_greater_than_four = Enum.any?(original_array, fn(num) -> num > 4 end)
is_any_greater_than_ten = Enum.any?(original_array, fn(num) -> num > 10 end)


are_all_numbers |> IO.inspect(label: "All numbers?")
is_any_greater_than_four |> IO.inspect(label: "Any number > 4")
is_any_greater_than_ten |> IO.inspect(label: "Any number > 10")
min_element |> IO.inspect(label: "Minimum element")
max_element |> IO.inspect(label: "Max element")
sum_doubled_array |> IO.inspect(label: "Sum of doubled array")
doubled_array |> IO.inspect(label: "Doubled element")
