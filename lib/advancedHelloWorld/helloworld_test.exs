ExUnit.start()

defmodule ExampleTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  import ExUnit.CaptureLog


  #IO test
  test "print greeting" do
    assert capture_io(fn -> HelloWorld.printHello "David" end) == "Hello David!\n"
  end

  #Logger test
  test "log greeting" do
    assert String.match? capture_log(fn -> HelloWorld.logHello "David" end),  ~r/Hello David!/
  end
end
