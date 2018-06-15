map_atom_style = %{
  :foo => "bar",
  "baz" => :quux,
  :blep => "blah"
}
map_json_style = %{
  foo: "bar",
  baz: "quux",
  wobble: "wubble"
}

map_atom_style[:foo] |> IO.inspect(label: "Map Atom foo value")
map_json_style[:foo] |> IO.inspect(label: "Map Json foo value")

map_json_style
|> Map.fetch(:foo)
|> IO.inspect(label: "Map Json foo value fetch command")

map_json_style
|> Map.delete(:foo)
|> Map.put(:corge, "grault")
|> IO.inspect(label: "Map Json after foo deletion and corge insertion")

map_json_style
|> Map.keys()
|> IO.inspect(label: "Map Json keys")


map_json_style
|> Map.values()
|> IO.inspect(label: "Map Json values")

map_atom_style
|> Map.merge(map_json_style)
|> IO.inspect(label: "Map Json and atom merged")
