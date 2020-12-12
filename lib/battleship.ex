defmodule Battleship do
  # our turn
  # their turn
  # make board display
  # validate inputs
  # maybe agent for storing boards so doesn't render each time?
  # different ship sizes
  # different boards
  #
  @board_locations for n <- [1, 2, 3],
                       l <- ["A", "B", "C"],
                       do: l <> Integer.to_string(n)

  def run() do
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

  def select_ships() do
    ship1 = prompt("Select first ship location")
    ship2 = prompt("Select second ship location")
    ship3 = prompt("Select third ship location")
    ships = [ship1, ship2, ship3]

    if ships |> Enum.uniq() |> Enum.count() !== 3 do
      IO.puts("Invalid Ship Selection")
      select_ships
    else
      ships
    end
  end

  def setup() do
    Animations.clear_screen()

    if DevConfig.animations() do
      rules = prompt("Do you need to see the rules? Press \"Y\" or \"N\"")

      case rules do
        "Y" -> Animations.show_rules()
        "N" -> nil
        _ -> setup()
      end
    else
      nil
    end

    Animations.clear_screen()

    custom_ships = prompt("Do you want to stay in your current location? Press \"Y\" or \"N\"")

    player1_ships =
      case custom_ships do
        "Y" -> player1_ships = @board_locations |> Enum.take_random(3)
        "N" -> select_ships()
        _ -> nil
      end

    ai_ships = @board_locations |> Enum.take_random(3)
    IO.inspect(player1_ships)
    IO.inspect(ai_ships)

    start_game(player1_ships, ai_ships)
  end

  def start_game(player1_ships, ai_ships) do
    if(rem(:rand.uniform(10), 2) === 0) do
      Animations.player_cutscene("Captain, we should make the first move.", true)
      player1_turn(player1_ships, ai_ships, [], [])
    else
      Animations.player_cutscene(
        """
        Captain, the bureaucrats are attacking! 
        BATTLE STATIONS!
        """,
        true
      )

      ai_turn(player1_ships, ai_ships, [], [])
    end
  end

  def player1_turn(_, [], _, _) do
    Animations.win_animation()
    play_again? = prompt("Want to play again? \"Y\" or \"N\"")
    play_again(play_again?)
  end

  def player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks) do
    Animations.player_cutscene("Captain, where should we attack?")
    attack = prompt("Enter coordinate to attack")

    # if(!valid_coordinate(attack),
    #   do: player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks)
    # )

    Animations.player_cutscene("Captain selects #{attack}")

    if Enum.find(ai_ships, fn s -> s === attack end) do
      Animations.hit_animation()

      player1_turn(
        player1_ships,
        ai_ships -- [attack],
        player1_attacks ++ [attack],
        ai_attacks
      )
    else
      Animations.miss_animation()
      ai_turn(player1_ships, ai_ships, player1_attacks ++ [attack], ai_attacks)
    end
  end

  def player1_turn(_, _, _, _) do
    IO.puts("Player 1 ERROR")
  end

  def ai_turn([], _, _, _) do
    Animations.lose_ending()
    play_again? = prompt("Would you like to play again? \"Y\" or \"N\"")

    play_again(play_again?)
  end

  def ai_turn(player1_ships, ai_ships, player1_attacks, ai_attacks) do
    attack = (@board_locations -- ai_attacks) |> Enum.random()
    Animations.enemy_cutscene("Attack #{attack}!", true)

    if Enum.find(player1_ships, fn s -> s === attack end) do
      Animations.hit_animation()
      ai_turn(player1_ships -- [attack], ai_ships, player1_attacks, ai_attacks ++ [attack])
    else
      Animations.miss_animation()
      player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks ++ [attack])
    end
  end

  def ai_turn(_, _, _, _) do
    IO.puts("AI ERROR")
  end

  #   def valid_coordinate(input) do
  #     [letter, number] = input |> String.codepoints()
  #     try
  #     valid_letter(letter) && valid_number(String.to_integer(number))
  #   catch
  #     false
  #   end

  #   def valid_letter(l) when is_binary(l), do: true
  #   def valid_number(n) when is_integer(n), do: true
end

Battleship.run()
