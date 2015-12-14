class Player
  def initialize()
    @x = 0
    @y = 860
    @width = 100
    @height = 108
    @speed = 10
    @hp = 100
    @image = Gosu::Image.new('iu.png')
    @jump = 300
    @floor = 860
  end

  def moveRight()
    @x += @speed
  end

  def moveLeft()
    @x -= @speed
  end

  def jump()
    @y -= @jump
  end


  def move(how)
    @y += 5 if @y < @floor
    @x += @speed if how == "right"
    @x -= @speed if how == "left"
    @y -= @jump if how == "jump" && @y == @floor
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def hurt(ammount)
    @hp -= ammount
  end

  attr_reader :x
end
