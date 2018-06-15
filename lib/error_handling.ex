err = try do
  raise "oops"
rescue
  e in RuntimeError -> e
end

IO.puts(err.message)
