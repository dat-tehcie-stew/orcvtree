require 'gosu'
require_relative 'player'
require_relative 'levels'
a_keener_sense_of_optimism = false

class Window < Gosu::Window
  def initialize()
    super(1920,960,true)
    self.caption = "The Rage of Morbork"
    @level = Level.new()
    @player = Player.new()
    @enemysLeft = 0
  end

  def changeScene()
    if @level.levelNumber == 0
      @level.mainMenu()
    elsif @level.levelNumber == 1
      @level.intro()
    elsif @level.levelNumber == 2
      @level.level1()
    elsif @level.levelNumber == 3
      @level.level2()
    elsif @level.levelNumber == 4
      @level.level3()
    elsif @level.levelNumber == 5
      @level.level4()
    elsif @level.levelNumber == 6
      @level.end()
    end
  end

  def draw()
    @player.draw
    @level.draw
  end

  def update()
    changeScene() if @player.x >= 1900 && @enemysLeft == 0

    if button_down?(Gosu::KbRight)
      @player.move("right")
    elsif button_down?(Gosu::KbLeft)
      @player.move("left")
    elsif button_down?(Gosu::KbUp)
      @player.move("jump")
    else
      @player.move("nothing")
    end

    end
  end


window = Window.new
window.show
