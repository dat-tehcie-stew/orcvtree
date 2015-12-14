#Parent Class
class Level
  def initialize()
    @background = Gosu::Image.new('lv2.png')
    @foreground = #something.png
    @a_keen_sense_of_optimism = false
    @ground = 0 #just the base x value so that we can use it
    @enemyNumber = 0
    @levelNumber = 10
  end

  def mainMenu() #0
    @background = Gosu::Image.new('mainMenu.png')
  end

  def intro() #1
    @background = Gosu::Image.new('intro.png')
  end

  def level1() #2
    @background = Gosu::Image.new('l1.png')
  end

  def level2() #3
    @background = Gosu::Image.new('l2.png')
  end

  def level3() #4
    @background = Gosu::Image.new('l3.png')
  end

  def level4() #5
    @background = Gosu::Image.new('l4.png')
  end

  def end() #6
    @background = Gosu::Image.new('end.png')
  end

  attr_reader

  def draw()
    @background.draw(0, 0, 0)
  end
end
