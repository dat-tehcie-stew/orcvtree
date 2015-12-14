class Enemy
  def initialize()
    @x = 100
    @y = 0
    @image = Gosu::Image.new('iu.png')
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def move()
     @x += 5 if @x < @player.x
     @x -= 5 if @x > @player.x
   end
end
