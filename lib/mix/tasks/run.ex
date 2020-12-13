defmodule Mix.Tasks.Run do
  use Mix.Task

  def run(_) do
    System.cmd("elixir", ["lib/battleship.exs"])
  end
end
