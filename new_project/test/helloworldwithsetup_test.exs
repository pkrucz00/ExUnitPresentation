defmodule HelloWorldTestWithSetup do
  use ExUnit.Case

  import ExUnit.CaptureIO
  import ExUnit.CaptureLog

  setup_all do
    {:ok, name: "David"}
  end

  test "return greeting", state do
    assert HelloWorld.returnHello(state[:name]) == "Hello #{state[:name]}!"
  end

  test "print greeting", state do
    assert capture_io(fn -> HelloWorld.printHello state[:name] end) == "Hello #{state[:name]}!\n"
  end

  test "log greeting", state do
    assert String.match? capture_log(fn -> HelloWorld.logHello state[:name] end),  ~r/Hello #{state[:name]}!/
  end

end