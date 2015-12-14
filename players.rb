#Person Grandparent Class
class Person
  def initialize()
    @x = 0
    @y = 0
    @width = 0
    @height = 0
    @speed = 1
    @hp = 100
    @image = Gosu::Image.new('iu.jpeg')
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def hurt(ammount)
    @hp -= ammount
  end

  attr_reader :x
end
  #Player Parent Class
  class Player < Person
    def initialize()
      super()
      @speed = 5
      @jump = 15
    end

    def moveRight()
      @x += @speed
    end

    def moveLeft()
      @x -= @speed
    end

    def jump()
      #add the jump function here
    end
  end

  #Enemy Parent Class
  class Enemy < Person
    def initialize()
      super()
      @attack = 0
      @player = player
    end

    def move()
      @x += @speed if @player.x < @x
      @x -= @speed if @player.x > @x
      attack() if (@x - @player.x >= 5) && (@y == @player.y)
    end

    def attack()
      @player.hurt(@attack)
    end
  end
    #Flowers Child Class
    class Flower < Enemy
      def initialize()
        super()
        @attack = 10
      end
    end
      #Pink Flower Subclass
      class PinkFlower < Flower
        def initialize()
          super()
          @attack *= 1
          @image = Gosu::Image.new('iu-1.jpeg')
        end
      end

      #Red Flower Subclass
      class RedFlower < Flower
        def initialize()
          super()
          @attack *= 2
        end
      end

      #Blue Flower Subclass
      class BlueFlower < Flower
        def initialize()
          super()
          @attack *= 3
        end
      end

    #Ents Child Class
    class Ent < Enemy
      def initialize()
        super()
        @attack = 15
      end
    end
      #Birch Ent Subclass
      class BirchEnt < Ent
        def initialize()
          super()
          @attack *= 1
        end
      end

      #Oak Ent Subclass
      class OakEnt < Ent
        def initialize()
          super()
          @attack *= 2
        end
      end

      #Pine Ent Subclass
      class PineEnt < Ent
        def initialize()
          super()
          @attack *= 1
        end
      end

    #Mushrooms Child Class
    class Mushroom < Enemy
      def initialize()
        super()
        @attack = 5
      end
    end
      #Easy Mushroom Subclass
      class EasyMushroom < Mushroom
        def initialize()
          super()
          @attack *= 1
        end
      end

      #Medium Mushroom Subclass
      class MediumMushroom < Mushroom
        def initialize()
          super()
          @attack *= 2
        end
      end

      #Strong Mushroom Subclass
      class StrongMushroom < Mushroom
        def initialize()
          super()
          @attack *= 5
        end
      end

    #Tree of Life Child Class
    class TreeOfLife < Enemy
      def initialize()
        super()
      end
    end
