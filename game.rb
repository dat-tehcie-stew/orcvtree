require 'gosu'
require_relative 'players'
require_relative 'levels'
a_keener_sense_of_optimism = false

class Window < Gosu::Window
  def initialize()
    super(1920,960,true)
    self.caption = "The Rage of Morbork"
    @level = Level.new()
    @player = Player.new()
    @enemy = PinkFlower.new()
    @enemysLeft = 1
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
    @enemy.draw
  end

  def update()
    changeScene() if @player.x >= 1900 && @enemysLeft == 0
    @player.moveRight if button_down?(Gosu::KbRight)
    @player.moveLeft if button_down?(Gosu::KbLeft)
    @player.jump if button_down?(Gosu::KbUp)
    @enemy.move()
    end
  end


window = Window.new
window.show
