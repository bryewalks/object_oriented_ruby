class Vehicle
   def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike_1 = Bike.new
car_1 = Car.new

bike_1.accelerate
car_1.accelerate



p bike_1
p car_1

bike_1.ring_bell
car_1.honk_horn

