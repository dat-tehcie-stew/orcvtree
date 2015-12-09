#Parent Class
class Level
  def initialize()
    @player = player
    @scene = scene
    @background = #something.png
    @advance = #something that when they complete it they advance
    @enemies = enemy
    @menu = menu
    @foreground = #something.png
    @a_keen_sense_of_optimism = false
    @ground = ground #just the base x value so that we can use it
  end

  def nextScene
  end
end
  #Main Menu Child Class
  class MainMenu < Level
    @start = start
    @save = save
    @exit = break(0)
    @options = options
    @newgame = newgame
    @continuegame = continuegame
  end

  #Intro Cut Scene Child Class
  class Intro < Level
    @music = music
  end

  #Level 1 Child Class
  class Level1 < Level
    @enemies = enemies
    @advance = #whatever they should advance with
    @background = #specific background
  end

  #Level 2 Child Class
  class Level2 < Level
    @enemies = enemies
    @advance = #whatever they should advance with
    @background = background
  end

  #Level 3 Child Class
  class Level3 < Level
    @enemies = enemies
    @advance = #whatever they advnace to the next le vel with
  end

  #Level 4 Child Class
  class Level4 < Level
    BOSS
    @boss = boss
    @music = scary music
    @mood = scared
    @background = hell
    @enemies = whatever the boss drops
    @advance = endd of the game
  end

  # Fin Cut Scene Child Class
  class Fin < Level
    @music = happy
    @mood = good
    @a_keen_sense_of_optimism = true
    @an_even_keener_sense_of_optimism = true 
    @background = happy background
    @endingmessage = whatever the ending message is
  end
