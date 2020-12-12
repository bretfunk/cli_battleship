defmodule Mix.Tasks.Setup do
  use Mix.Task

  def run(_) do
    System.cmd("brew", ["install", "timidity"])
  end
end
