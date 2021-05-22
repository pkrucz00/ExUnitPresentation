ExUnit.start()

defmodule ExampleTest do
  use ExUnit.Case

  test "greets David" do
    assert HelloWorld.helloSomeone("David") == "Hello David!"
  end

#  test "greets David Beckham" do
#    assert HelloWorld.helloSomeone("David Beckham") == "Hello David Beckham!"
#  end

  test "greets David Beckham" do
    assert HelloWorld.helloSomeone("David Beckham") == "Hello David Beckham!", "bad string returned"
  end

end
