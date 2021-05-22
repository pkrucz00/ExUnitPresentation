defmodule ReceiveMessageTest do
  use ExUnit.Case

  test "receives message" do
    Sender.sendMessage self()
    assert_received :message
  end
end