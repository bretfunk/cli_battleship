defmodule Battleship do
  # make board display
  # make win screens
  # maybe agent for storing boards so doesn't render each time?
  # different ship sizes
  # validate inputs
  # different boards
  #
  @board_locations for n <- [1, 2, 3],
                       l <- ["A", "B", "C"],
                       do: l <> Integer.to_string(n)

  def(run()) do
    Animations.clear_screen()
    :timer.sleep(500)
    Animations.intro_animation()
    Music.intro()
    Animations.pause_animation(3)
    IO.gets("Press Enter to Continue")
    Music.enter()
    Animations.start_animation(3)
    Animations.cutscene_one()
  end

  def surrender("S"), do: Animations.lose_ending()
  def surrender("F"), do: setup()
  def surrender(_), do: Animations.cutscene_one()

  def play_again("Y"), do: run()
  def play_again(_), do: Animations.clear_screen()

  def prompt(text) do
    IO.gets("#{text}\n") |> String.upcase() |> String.trim()
  end

  def setup() do
    Animations.clear_screen()
    rules = prompt("Do you need to see the rules? Press Y or N")

    case rules do
      "Y" -> Animations.show_rules()
      "N" -> nil
      _ -> setup()
    end

    Animations.clear_screen()

    custom_ships =
      prompt("Do you want to move your ships or stay in the current location? Press M or S")

    player1_ships =
      case custom_ships do
        # just hardcoding these for now
        "S" -> ["A1"]
        "M" -> ["A1"]
        _ -> nil
      end

    ai_ships = ["A1"]

    start_game(player1_ships, ai_ships)
  end

  def start_game(player1_ships, ai_ships) do
    if(rem(:rand.uniform(10), 2) === 0) do
      Animations.cutscene("Captain, we should make the first move.", true)
      player1_turn(2, player1_ships, ai_ships, [], [])
    else
      Animations.cutscene(
        """
        Captain, the bureaucrats are attacking! 
        BATTLE STATIONS!
        """,
        true
      )

      ai_turn(2, player1_ships, ai_ships, [], [])
    end
  end

  def player1_turn(_, _, [], _, _) do
    Animations.win_animation()
    play_again? = prompt("Want to play again? Y or N")
    play_again(play_again?)
  end

  def player1_turn(num, player1_ships, ai_ships, player1_attacks, ai_attacks)
      when num > 0 do
    Animations.cutscene("Captain, where would you like to attack?")
    attack = prompt("Enter coordinate")

    if Enum.find(ai_ships, fn s -> s === attack end) do
      Animations.hit_animation()

      player1_turn(
        num - 1,
        player1_ships,
        ai_ships -- [attack],
        player1_attacks ++ [attack],
        ai_attacks
      )
    else
      Animations.miss_animation()
      player1_turn(num - 1, player1_ships, ai_ships, player1_attacks ++ [attack], ai_attacks)
      # ai_turn(num - 1, player1_ships, ai_ships, player1_attacks, ai_attacks)
    end
  end

  def player1_turn(_, _, _, _, _) do
    IO.puts("Player 1 ERROR")
  end

  def ai_turn(_, [], _, _, _) do
    Animations.lose_ending()
    play_again? = prompt("Would you like to play again? Y or N")

    play_again(play_again?)
  end

  def ai_turn(num, player1_ships, ai_ships, player1_attacks, ai_attacks)
      when num > 0 do
    IO.puts("Computer Turn")
    attack = rand_position([])
    IO.puts("Computer selects #{attack}")
    ai_attacks ++ [attack]

    if(Enum.find(player1_ships, fn s -> s === attack end),
      do: IO.puts("HIT"),
      else: IO.puts("MISS")
    )

    player1_turn(num - 1, player1_ships, ai_ships, player1_attacks, ai_attacks)
  end

  def ai_turn(_, _, _, _, _) do
    IO.puts("AI ERROR")
  end

  def rand_position(_previous) do
    "A1"
  end

  # def check_for_winner(player1_ships, ai_ships, player1_attacks, ai_attacks)
  #     when length(player1_ships) === 0 do
  #   ai_turn(true, player1_ships, ai_ships, player1_attacks, ai_attacks)
  # end

  # def check_for_winner(player1_ships, ai_ships, player1_attacks, ai_attacks)
  #     when length(ai_ships) === 0 do
  #   player1_turn(true, player1_ships, ai_ships, player1_attacks, ai_attacks)
  # end
end

Battleship.run()
