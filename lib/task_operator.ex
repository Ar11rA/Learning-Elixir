defmodule TaskOperator do
  def do_some_work(str) do
    Process.sleep(5000)
    try do
      case str |> String.contains?("z") do
        true -> raise RuntimeError
        false -> "Some work done"
      end
    rescue
      RuntimeError -> "No work done!"
    end
  end

  def do_some_other_work() do
    "Other work done"
  end
end


task = Task.async(fn -> TaskOperator.do_some_work("abzc") end)
res  = TaskOperator.do_some_other_work()
IO.inspect res

yield_res = Task.yield(task, 3000)
case yield_res do
  {:ok, result} -> IO.inspect result
  {:error, message} -> IO.puts message
  nil -> IO.puts "Timeout"
end

# Comment the above code for yield and uncomment the below code for await
# Check out the difference

# IO.inspect Task.await(task, 3000)

