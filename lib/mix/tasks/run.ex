defmodule Mix.Tasks.Run do
  use Mix.Task

  def run(_) do
    Battleship.run()
  end
end
