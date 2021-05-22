defmodule Sender do
  def sendMessage(pid) do
    send pid, :message
  end
end