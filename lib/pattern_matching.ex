login_response =  %{
  "_csrf_token" => "UR99GwILHTtzbSBUYRwmBVpdeDY/AAAA3K70jEiO9UhgPVwh+d3WYw==",
  "_utf8" => "✓",
  "user" => %{
    "name" => "Memphis Minnie",
    "password" => "[FILTERED]",
    "username" => "minnie"
    }
  }

create = fn (parameters = %{"user" => user_params}) ->
  IO.inspect user_params["name"]
  IO.inspect parameters["_utf8"]
end

create.(login_response)

%{:a => one} = %{:a => 1, :b => 2, :c =>3}

%{:ok => value} = %{:ok => "Successful!"}

key = "hello"
%{^key => value} = %{"hello" => "world"}
