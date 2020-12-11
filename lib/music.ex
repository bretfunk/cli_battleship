defmodule Music do
  def play(file) do
    if(DevConfig.music(), do: System.cmd("timidity", ["audio/#{file}.mid"]))
  end

  def intro() do
    play("won")
  end

  def enter do
    play("enter")
  end

  def win_music() do
    play("win")
  end

  def lose_music() do
    play("lost")
  end
end
