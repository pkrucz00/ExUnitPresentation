defmodule HelloWoldTest do
  use ExUnit.Case

  import ExUnit.CaptureIO
  import ExUnit.CaptureLog

  #regular test
  test "return greeting" do
    assert HelloWorld.returnHello("David") == "Hello David!"
  end

  #IO test
  test "print greeting" do
    assert capture_io(fn -> HelloWorld.printHello "David" end) == "Hello David!\n"
  end

#  #Log test
#  test "log greeting" do
#    assert capture_log(fn -> HelloWorld.logHello "David" end) == "Hello David!"
#  end

  test "log greeting" do
    assert String.match? capture_log(fn -> HelloWorld.logHello "David" end),  ~r/Hello David!/
  end

end
