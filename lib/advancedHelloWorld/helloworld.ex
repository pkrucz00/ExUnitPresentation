defmodule HelloWorld do
  import Logger

  def returnHello name do
    "Hello #{name}!"
  end

  def printHello name do
    IO.puts "Hello #{name}!"
  end

  def logHello name do
    Logger.info "Hello #{name}!"
  end

end