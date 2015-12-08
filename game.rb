require 'gosu'
require_relative 'players'
require_relative 'levels'

class Window < Gosu::Window
  def initialize()
    super(1920,1080,true)
    self.caption = "The Rage of Morbork"
    @scene = MainMenu.new()
  end

  def draw()

  end

  def update()

  end
end

window = Window.new
window.show
