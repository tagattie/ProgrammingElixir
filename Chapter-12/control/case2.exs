dave = %{ name: "Dave", age: 27 }

case dave do
  person = %{age: age} when is_number(age) and age >= 21 ->
    IO.puts "You are cleared to enter the Foo Bar, #{person.name}"
  _ ->
    IO.puts "Sorry, no admission"
end

# iex(12)> c "case2.exs"
# You are cleared to enter the Foo Bar, Dave
# []