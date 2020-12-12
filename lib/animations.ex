defmodule Animations do
  def clear_screen do
    IO.puts("\e[H\e[2J")
  end

  def intro_animation() do
    if DevConfig.animations() do
      :timer.sleep(250)
      IO.puts(" ____       _______ _______ _      ______  _____ _    _ _____ _____  ")
      :timer.sleep(250)
      IO.puts("|  _ \\   /\\|__   __|__   __| |    |  ____|/ ____| |  | |_   _|  __ \\ ")
      :timer.sleep(250)
      IO.puts("| |_) | /  \\  | |     | |  | |    | |__  | (___ | |__| | | | | |__) |")
      :timer.sleep(250)
      IO.puts("|  _ < / /\\ \\ | |     | |  | |    |  __|  \\___ \\|  __  | | | |  ___/ ")
      :timer.sleep(250)
      IO.puts("| |_) / ____ \\| |     | |  | |____| |____ ____) | |  | |_| |_| |     ")
      :timer.sleep(250)
      IO.puts("|____/_/    \\_\\_|     |_|  |______|______|_____/|_|  |_|_____|_|")
      :timer.sleep(250)
    else
      nil
    end
  end

  def pause_animation(num) do
    if DevConfig.animations() do
      if num === 0 do
        nil
      else
        IO.puts(" ")
        :timer.sleep(250)
        pause_animation(num - 1)
      end
    else
      nil
    end
  end

  def player_attack_animation(num \\ 5) do
    clear_screen()

    case num do
      5 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|  *                  |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        player_attack_animation(num - 1)

      4 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|      *              |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        player_attack_animation(num - 1)

      3 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|           *         |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        player_attack_animation(num - 1)

      2 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|                *    |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        player_attack_animation(num - 1)

      1 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|                   * |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        clear_screen()
    end
  end

  def enemy_attack_animation(num \\ 5) do
    clear_screen()

    case num do
      5 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|                   * |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        enemy_attack_animation(num - 1)

      4 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|               *     |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        enemy_attack_animation(num - 1)

      3 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|           *         |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        enemy_attack_animation(num - 1)

      2 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|      *              |\\\\\\\\
                    /////////|                     |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        enemy_attack_animation(num - 1)

      1 ->
        IO.puts("""
                            /|                     |\\
                          ///|                     |\\\\
                        /////|                     |\\\\\\
                      ///////|                     |\\\\\\\\
                    /////////|  *                  |\\\\\\\\\\\\
              \==========|===/                     \\===|===========/
        """)

        :timer.sleep(200)
        clear_screen()
    end
  end

  def start_animation(num \\ 9) do
    if DevConfig.animations() do
      Animations.clear_screen()

      case num do
        9 ->
          IO.puts("Somewhere off of the coast of Jacksonville, Florida...")
          :timer.sleep(3000)
          start_animation(num - 1)

        8 ->
          IO.puts("""

                       /|                                                                                                     |\\
                     ///|                                                                                                     |\\\\
                   /////|                                                                                                     |\\\\\\
                 ///////|                                                                                                     |\\\\\\\\
               /////////|                                                                                                     |\\\\\\\\\\\\
          \==========|===/                                                                                                   \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        7 ->
          IO.puts("""

                       /|                                                                                      |\\
                     ///|                                                                                      |\\\\
                   /////|                                                                                      |\\\\\\
                 ///////|                                                                                      |\\\\\\\\
               /////////|                                                                                      |\\\\\\\\\\\\
          \==========|===/                                                                                    \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        6 ->
          IO.puts("""

                       /|                                                                       |\\
                     ///|                                                                       |\\\\
                   /////|                                                                       |\\\\\\
                 ///////|                                                                       |\\\\\\\\
               /////////|                                                                       |\\\\\\\\\\\\
          \==========|===/                                                                     \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        5 ->
          IO.puts("""

                       /|                                                        |\\
                     ///|                                                        |\\\\
                   /////|                                                        |\\\\\\
                 ///////|                                                        |\\\\\\\\
               /////////|                                                        |\\\\\\\\\\\\
          \==========|===/                                                      \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        4 ->
          IO.puts("""

                       /|                                         |\\
                     ///|                                         |\\\\
                   /////|                                         |\\\\\\
                 ///////|                                         |\\\\\\\\
               /////////|                                         |\\\\\\\\\\\\
          \==========|===/                                       \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        3 ->
          IO.puts("""

                       /|                          |\\
                     ///|                          |\\\\
                   /////|                          |\\\\\\
                 ///////|                          |\\\\\\\\
               /////////|                          |\\\\\\\\\\\\
          \==========|===/                        \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(200)
          start_animation(num - 1)

        2 ->
          IO.puts("""

                       /|           |\\
                     ///|           |\\\\
                   /////|           |\\\\\\
                 ///////|           |\\\\\\\\
               /////////|           |\\\\\\\\\\\\
          \==========|===/         \\===|===========/
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          """)

          :timer.sleep(1000)
          start_animation(num - 1)

        1 ->
          enemy_cutscene("""
          SURRENDER PIRATES, WE HAVE YOU SURROUNDED
          AND OUR COFFERS ARE FEELING A LITTLE DRY
          HAHAHAHA
          """)

          Music.lose_music()

        _ ->
          nil
      end
    else
      nil
    end
  end

  def miss_animation() do
    Animations.clear_screen()

    IO.puts("""
    __  __ _____  _____ _____ 
    |  \/  |_   _|/ ____/ ____|
    | \  / | | | | (___| (___  
    | |\/| | | |  \___ \\___ \ 
    | |  | |_| |_ ____) |___) |
    |_|  |_|_____|_____/_____/ 
    """)

    :timer.sleep(500)
    IO.gets("Press Enter to Continue.")
  end

  def win_animation() do
    player_cutscene("Captain, we have destroyed the enemy ships!")
    Animations.clear_screen()

    IO.puts("""
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░▓████████████████████████▒░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░▓█████▓▒░░░░░░░░░░░░░░░▒██████▒░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░████▒░░░░░░░░░░░░░░░░░░░░░░░░░▓███▒░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░
    """)

    :timer.sleep(500)
    Animations.clear_screen()

    IO.puts("""
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░▓████████████████████████▒░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░▓█████▓▒░░░░░░░░░░░░░░░▒██████▒░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░████▒░░░░░░░░░░░░░░░░░░░░░░░░░▓███▒░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▒░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▓░▒██░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██▒░██░░░░░▒▒▓███▒░░░░░░░▒███▓▒▒░░░░░██░▓██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░██░██░░██████████▒░░░░░▓██████████░░██▒██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░████░████████████░░░░░████████████░████░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░▒██████████░░░░░░░██████████▒░██▒░░░░░░░░░▒░░░░░░
    ░░░░░▒████░░░░░░░▓█▒░░█████████░░░░░░░░░█████████░░▒█▓░░░░░░▓████░░░░░
    """)

    :timer.sleep(500)
    Animations.clear_screen()

    IO.puts("""
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░▓████████████████████████▒░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░▓█████▓▒░░░░░░░░░░░░░░░▒██████▒░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░████▒░░░░░░░░░░░░░░░░░░░░░░░░░▓███▒░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▒░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▓░▒██░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██▒░██░░░░░▒▒▓███▒░░░░░░░▒███▓▒▒░░░░░██░▓██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░██░██░░██████████▒░░░░░▓██████████░░██▒██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░████░████████████░░░░░████████████░████░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░▒██████████░░░░░░░██████████▒░██▒░░░░░░░░░▒░░░░░░
    ░░░░░▒████░░░░░░░▓█▒░░█████████░░░░░░░░░█████████░░▒█▓░░░░░░▓████░░░░░
    ░░░░░██░▒██▒░░░░░██░░░░██████▓░░░░█░█░░░░███████░░░░██░░░░░███░░██░░░░
    ░░░░░██░░░██▓░░░░██░░░░░░▒▓▓░░░░▒██░██░░░░░▓▓▒░░░░░▒██░░░░███░░░██░░░░
    ░░░▓██▒░░░░████▓░░██░░░░░░░░░░░░███░███░░░░░░░░░░░░██░░█████░░░░▓██▒░░
    ░░██▓░░░░░░░░▒████████▓░░░░░░░░████░███▓░░░░░░░▒▓████████░░░░░░░░░███░
    ░░██▓▒▓███▓░░░░░░▓████████▓░░░░████░███▓░░░░▓████████▓░░░░░░████▓▓███░
    ░░░███████████▒░░░░░░███████░░░░██░░░██░░░░██████▓░░░░░░▓███████████░░
    ░░░░░░░░░░░░▓█████░░░░██▓▓░██░░░░░░░░░░░░░██░█▒██░░░▒█████▓░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒█████▒▒█▓█░███▓▓▒▒▒▓▒▒▓▓▓███▒███░▓█████░░░░░░░░░░░░░░░
    """)

    :timer.sleep(500)
    Animations.clear_screen()

    IO.puts("""
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░▓████████████████████████▒░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░▓█████▓▒░░░░░░░░░░░░░░░▒██████▒░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░████▒░░░░░░░░░░░░░░░░░░░░░░░░░▓███▒░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░▒██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░
    ░░░░░░░░░░░░░██▒░██▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▓░▒██░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░██▒░██░░░░░▒▒▓███▒░░░░░░░▒███▓▒▒░░░░░██░▓██░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░██░██░░██████████▒░░░░░▓██████████░░██▒██░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░████░████████████░░░░░████████████░████░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░███░▒██████████░░░░░░░██████████▒░██▒░░░░░░░░░▒░░░░░░
    ░░░░░▒████░░░░░░░▓█▒░░█████████░░░░░░░░░█████████░░▒█▓░░░░░░▓████░░░░░
    ░░░░░██░▒██▒░░░░░██░░░░██████▓░░░░█░█░░░░███████░░░░██░░░░░███░░██░░░░
    ░░░░░██░░░██▓░░░░██░░░░░░▒▓▓░░░░▒██░██░░░░░▓▓▒░░░░░▒██░░░░███░░░██░░░░
    ░░░▓██▒░░░░████▓░░██░░░░░░░░░░░░███░███░░░░░░░░░░░░██░░█████░░░░▓██▒░░
    ░░██▓░░░░░░░░▒████████▓░░░░░░░░████░███▓░░░░░░░▒▓████████░░░░░░░░░███░
    ░░██▓▒▓███▓░░░░░░▓████████▓░░░░████░███▓░░░░▓████████▓░░░░░░████▓▓███░
    ░░░███████████▒░░░░░░███████░░░░██░░░██░░░░██████▓░░░░░░▓███████████░░
    ░░░░░░░░░░░░▓█████░░░░██▓▓░██░░░░░░░░░░░░░██░█▒██░░░▒█████▓░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▒█████▒▒█▓█░███▓▓▒▒▒▓▒▒▓▓▓███▒███░▓█████░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░▒████▒▓█▒▒█░█▒█░█░█▓█▒█▓░█░█████▒░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░██░░██▓█▓█▓█▒█▒█▓█▓████░▓█▓░░░░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░▓████▓░▓█▓█░█▒█░█░█▒█▒███▒░██████░░░░░░░░░░░░░░░░░░
    ░░░░░░░░░░░░░░░▓█████░░██░░░▒█████▓█▓█████▒░░░██░▒█████▓░░░░░░░░░░░░░░
    ░░░░░░▒██████████▓░░░░░███░░░░░░░░░░░░░░░░░░░██▒░░░░░▓██████████▒░░░░░
    ░░░░░░██░░░▓▓▓░░░░░░▒██████▓░░░░░░░░░░░░░░░███████▒░░░░░░▓▓▒░░▒██░░░░░
    ░░░░░░▓██░░░░░░░░▓████▓░░░█████▒░░░░░░▒▓█████░░░▓████▓░░░░░░░▒██▓░░░░░
    ░░░░░░░░███░░░░████▒░░░░░░░░▓█████████████▒░░░░░░░░▒████░░░░███░░░░░░░
    ░░░░░░░░░██░░░██▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓██░░░██░░░░░░░░
    ░░░░░░░░░██▒▓██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██▒▓██░░░░░░░░
    ░░░░░░░░░░████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░████░░░░░░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    """)

    :timer.sleep(500)
    Animations.clear_screen()

    IO.puts("""
    /$$     /$$ /$$$$$$  /$$   /$$    /$$      /$$ /$$$$$$ /$$   /$$
    | $$   /$$//$$__  $$| $$  | $$   | $$  /$ | $$|_  $$_/| $$$ | $$
    \\ $$ /$$/| $$  \\ $$| $$  | $$    | $$ /$$$| $$  | $$  | $$$$| $$
    \\ $$$$/  | $$  | $$| $$  | $$    | $$/$$ $$ $$  | $$  | $$ $$ $$
    \\  $$/   | $$  | $$| $$  | $$    | $$$$_  $$$$  | $$  | $$  $$$$
    | $$     | $$  | $$| $$  | $$    | $$$/ \\  $$$  | $$  | $$\\  $$$
    | $$     |  $$$$$$/|  $$$$$$/    | $$/   \\  $$ /$$$$$$| $$ \\  $$
    |__/    \\______/  \\______/       |__/     \\__/|______/|__/  \\__/
    """)

    Music.win_music()
    Battleship.prompt("Press Enter to Continue")
  end

  def hit_animation() do
    Animations.clear_screen()

    IO.puts("""
          )
    (
    .-`-.
    :   :
    :TNT:
    :___:
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""

    \\|/
    - o -
    /-`-.
    :   :
    :TNT:
    :___:
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    .---.
    : | :
    :-o-:
    :_|_:
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    .---.
    (\\|/)
    --0--
    (/|\\)
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    '.\\|/.'
    (\\   /)
    - -O- -
    (/   \\)
    ,'/|\\'.
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    '.  \\ | /  ,'
    `. `.' ,'
    ( .`.|,' .)
    - ~ -0- ~ -
    (
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    ','|'.` )
    .' .'. '.
    ,'  / | \\  '.
    \\ '  "  
    ` . `.' ,'
    . `` ,'. "
    ~ (   ~ -
    '
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""

    . ','|` ` .
    .'  "  '
    ,   ' , '  `

    (  ) (
    ) ( )
    (  )
    ) /
    ,---.
    """)

    :timer.sleep(200)
    Animations.clear_screen()

    IO.puts("""
    _.-^^---....,,--       
    _--                  --_  
    <                        >)
    |                         | 
    \\._                   _./  
    ```--. . , ; .--'''       
        | |   |             
     .-=||  | |=-.   
     `-=#$%&%$#=-'   
        | ;  :|     
    _____.,-#%&$@%#&#~,._____

    """)

    :timer.sleep(800)
    Animations.clear_screen()

    IO.puts("""
     /$$   /$$ /$$$$$$ /$$$$$$$$
    | $$  | $$|_  $$_/|__  $$__/
    | $$  | $$  | $$     | $$
    | $$$$$$$$  | $$     | $$
    | $$__  $$  | $$     | $$
    | $$  | $$  | $$     | $$
    | $$  | $$ /$$$$$$   | $$
    |__/  |__/|______/   |__/
    """)

    IO.gets("Press Enter to Continue")
  end

  def player_cutscene(text, pause \\ false) do
    Animations.clear_screen()
    player_graphic(text)
    sound(text)
    if(pause, do: IO.gets("Press Enter to Continue"))
  end

  def player_board_cutscene(text, pause?, player1_ships, ai_ships, player1_attacks, ai_attacks) do
    Animations.clear_screen()
    player_graphic_with_board(text, player1_ships, ai_ships, player1_attacks, ai_attacks)
    sound(text)
    if(pause?, do: IO.gets("Press Enter to Continue"))
  end

  def enemy_cutscene(text, pause \\ false) do
    Animations.clear_screen()
    enemy_graphic(text)

    if(pause, do: IO.gets("Press Enter to Continue"))
  end

  def enemy_board_cutscene(text, pause?, player1_ships, ai_ships, player1_attacks, ai_attacks) do
    Animations.clear_screen()
    enemy_graphic_with_board(text, player1_ships, ai_ships, player1_attacks, ai_attacks)

    if(pause?, do: IO.gets("Press Enter to Continue"))
  end

  def enemy_graphic(text) do
    IO.puts("""
    ********************************************
    ********************************************

        #{text}
      
    ********************************************
    ********************************************
      \\
    ***                                      ***
    ***               ________               ***
    ***              /        \\              ***
    ***           __/       (o)\\__           ***
    ***          /     ______\\\   \\           ***
    ***          |____/       \\____|         ***
    ***              [  --  --  ]            ***
    ***               |(  L   )|             ***
    ***        ___----\\  __  /----___        ***
    ***       /   |  < \\____/ >   |   \\      ***
    ***      /    |   < \\--/ >    |    \\     ***
    ***      ||||||    \\ \\/ /     ||||||     ***
    ***      |          \\  /   o       |     ***
    ***      |     |     \\/   === |    |     ***
    ***      |     |      |o  ||| |    |     ***
    ***      |     \\______|   +#* |    |     ***
    ***      |            |o      |    |     ***
    ***      \\           |      /     /      ***
    ***      |\\__________|o    /     /       ***
    ***      |           |    /     /        ***
    ********************************************
    ********************************************
    """)
  end

  def enemy_graphic_with_board(text, player1_ships, ai_ships, player1_attacks, ai_attacks) do
    stats_navbar(player1_ships, ai_ships, player1_attacks, ai_attacks, "ENEMY")

    IO.puts("""
    ********************************************
    ********************************************

        #{text}
      
    ********************************************
    ********************************************
      \\
    ***                                      ***
    ***               ________               ***
    ***              /        \\              ***
    ***           __/       (o)\\__           ***
    ***          /     ______\\\   \\           ***
    ***          |____/       \\____|         ***
    ***              [  --  --  ]            ***
    ***               |(  L   )|             ***
    ***        ___----\\  __  /----___        ***
    ***       /   |  < \\____/ >   |   \\      ***
    ***      /    |   < \\--/ >    |    \\     ***
    ***      ||||||    \\ \\/ /     ||||||     ***
    ***      |          \\  /   o       |     ***
    ***      |     |     \\/   === |    |     ***
    ***      |     |      |o  ||| |    |     ***
    ***      |     \\______|   +#* |    |     ***
    ***      |            |o      |    |     ***
    ***      \\           |      /     /      ***
    ***      |\\__________|o    /     /       ***
    ***      |           |    /     /        ***
    ********************************************
    ********************************************
    """)
  end

  def player_graphic(text) do
    IO.puts("""
    ********************************************
    ********************************************

        #{text}
      
    ********************************************
    ********************************************
         \\
    ***     _.-----._                        ***
    ***    _'    '    '_                     ***
    ***   '_____________'                    ***
    ***       | +_+ |                        ***
    ***   ==--'_D__,'---==.                  ***
    ***  /    > \\_/ <     |                  ***
    *** /  >__\\o_| o/     |                  ***
    *** |      | |_/    , |                  ***
    *** \\,_____/_)  o   | |                  ***
    ***    |   o '  o   | |                  ***
    ***    |   o |  o   |_/|                 ***
    ***    '   o |  o   '  |                 ***
    ***    |   o |  o   |_/                  ***
    ***    |   o |  o   |))                  ***
    ***    |     |      |                    ***
    ***    |     \\      |                    ***
    ***    |___o/ \\_____|                    ***
    ***      |   |   |                       ***
    ***    __)  >|<  (__                     ***
    ***   (____,_|_,____)                    ***
    ********************************************
    ********************************************
    """)
  end

  def player_graphic_with_board(text, player1_ships, ai_ships, player1_attacks, ai_attacks) do
    stats_navbar(player1_ships, ai_ships, player1_attacks, ai_attacks, "PLAYER")

    IO.puts("""
    ********************************************
    ********************************************

        #{text}
      
    ********************************************
    ********************************************
         \\
    ***     _.-----._                        ***
    ***    _'    '    '_                     ***
    ***   '_____________'                    ***
    ***       | +_+ |                        ***
    ***   ==--'_D__,'---==.                  ***
    ***  /    > \\_/ <     |                  ***
    *** /  >__\\o_| o/     |                  ***
    *** |      | |_/    , |                  ***
    *** \\,_____/_)  o   | |                  ***
    ***    |   o '  o   | |                  ***
    ***    |   o |  o   |_/|                 ***
    ***    '   o |  o   '  |                 ***
    ***    |   o |  o   |_/                  ***
    ***    |   o |  o   |))                  ***
    ***    |     |      |                    ***
    ***    |     \\      |                    ***
    ***    |___o/ \\_____|                    ***
    ***      |   |   |                       ***
    ***    __)  >|<  (__                     ***
    ***   (____,_|_,____)                    ***
    ********************************************
    ********************************************
    """)
  end

  def stats_navbar(player1_ships, ai_ships, player1_attacks, ai_attacks, turn) do
    IO.puts("""
      _______________________________________________________________________________________
         Player Ships Remaining: #{player1_ships |> Enum.count()}
         Enemy Ships Remaining:  #{ai_ships |> Enum.count()}
      _______________________________________________________________________________________
    """)

    if(turn === "PLAYER") do
      IO.puts("""
                  PLAYER GRID
         ___________________________
            1          2          3
         ___________________________

      A |   #{if(Enum.find(player1_attacks, fn x -> "A1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(player1_attacks, fn x -> "A2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(player1_attacks, fn x -> "A3" === x end), do: "X", else: ".")}
        |
      B |   #{if(Enum.find(player1_attacks, fn x -> "B1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(player1_attacks, fn x -> "B2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(player1_attacks, fn x -> "B3" === x end), do: "X", else: ".")}
        |
      C |   #{if(Enum.find(player1_attacks, fn x -> "C1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(player1_attacks, fn x -> "C2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(player1_attacks, fn x -> "C3" === x end), do: "X", else: ".")}


        _______________________________________________________________________________________


      """)
    else
      IO.puts("""
                  ENEMY GRID
         ___________________________
            1          2          3
         ___________________________

      A |   #{if(Enum.find(ai_attacks, fn x -> "A1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(ai_attacks, fn x -> "A2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(ai_attacks, fn x -> "A3" === x end), do: "X", else: ".")}
        |
      B |   #{if(Enum.find(ai_attacks, fn x -> "B1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(ai_attacks, fn x -> "B2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(ai_attacks, fn x -> "B3" === x end), do: "X", else: ".")}
        |
      C |   #{if(Enum.find(ai_attacks, fn x -> "C1" === x end), do: "X", else: ".")}          #{
        if(Enum.find(ai_attacks, fn x -> "C2" === x end), do: "X", else: ".")
      }          #{if(Enum.find(ai_attacks, fn x -> "C3" === x end), do: "X", else: ".")}


        _______________________________________________________________________________________


      """)
    end
  end

  def sound(text) do
    if(DevConfig.sound(), do: System.cmd("say", [text]))
  end

  def show_rules do
    rules = """
    Captain, we both have three ships so we are evenly
    matched. A direct hit will destroy any ship
    so we need to choose shots wisely.
    Should we stay in our current random location or
    should we manually position the fleet?
    """

    player_cutscene(rules)
  end

  def cutscene_one() do
    player_cutscene("""
    Captain, the IRS
    is coming to tax us!
    Should we prepare for battle?
    """)

    surrender? =
      IO.gets("Press \"Y\" to Fight.  Press \"N\" to Surrender\n")
      |> String.upcase()
      |> String.trim()

    Animations.clear_screen()
    Battleship.surrender(surrender?)
  end

  def lose_ending() do
    enemy_speech = """
    HAHA, YOU PIRATES WILL NEVER LEARN,
    THE HOUSE ALWAYS WINS.
    """

    Animations.enemy_cutscene(enemy_speech)
    Music.lose_music()
    Animations.clear_screen()
    play_again? = Battleship.prompt("Would you like to play again? \"Y\" or \"N\"")
    Battleship.play_again(play_again?)
  end
end
