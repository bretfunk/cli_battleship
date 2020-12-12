defmodule Battleship do
  # maybe agent for storing info?
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
    Animations.start_animation()
    Animations.cutscene_one()
  end

  def surrender("N"), do: Animations.lose_ending()
  def surrender("Y"), do: setup()
  def surrender(_), do: Animations.cutscene_one()

  def play_again("Y"), do: run()
  def play_again(_), do: nil

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
      select_ships()
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
    Animations.clear_screen()
    play_again? = prompt("Want to play again? \"Y\" or \"N\"")
    play_again(play_again?)
  end

  def player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks) do
    Animations.player_board_cutscene(
      "Captain, where should we attack?",
      false,
      player1_ships,
      ai_ships,
      player1_attacks,
      ai_attacks
    )

    attack = prompt("Enter coordinate to attack")

    if(String.length(attack) === 0,
      do: player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks)
    )

    Animations.player_board_cutscene(
      "Captain selects #{attack}",
      false,
      player1_ships,
      ai_ships,
      player1_attacks,
      ai_attacks
    )

    if Enum.find(ai_ships, fn s -> s === attack end) do
      Animations.player_attack_animation()
      Animations.hit_animation()

      player1_turn(
        player1_ships,
        ai_ships -- [attack],
        player1_attacks ++ [attack],
        ai_attacks
      )
    else
      Animations.player_attack_animation()
      Animations.miss_animation()
      ai_turn(player1_ships, ai_ships, player1_attacks ++ [attack], ai_attacks)
    end
  end

  def ai_turn([], _, _, _) do
    Animations.lose_ending()
    Animations.clear_screen()
    play_again? = prompt("Would you like to play again? \"Y\" or \"N\"")
    play_again(play_again?)
  end

  def ai_turn(player1_ships, ai_ships, player1_attacks, ai_attacks) do
    attack = (@board_locations -- ai_attacks) |> Enum.random()

    Animations.enemy_board_cutscene(
      "Attack #{attack}!",
      true,
      player1_ships,
      ai_ships,
      player1_attacks,
      ai_attacks
    )

    if Enum.find(player1_ships, fn s -> s === attack end) do
      Animations.enemy_attack_animation()
      Animations.hit_animation()
      ai_turn(player1_ships -- [attack], ai_ships, player1_attacks, ai_attacks ++ [attack])
    else
      Animations.enemy_attack_animation()
      Animations.miss_animation()
      player1_turn(player1_ships, ai_ships, player1_attacks, ai_attacks ++ [attack])
    end
  end
end

Battleship.run()
