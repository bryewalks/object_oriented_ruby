class Vehicle

  attr_reader :speed, :direction

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

  attr_reader :fuel, :make, :model

  def initialize(input_options)

    super()
    @fuel = input_options[:fuel] 
    @make = input_options[:make] 
    @model = input_options[:model] 

  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle

  attr_reader :gear, :type, :weight

  def initialize(input_options)

    super()
    @gear = input_options[:gear]
    @type = input_options[:type]
    @weight = input_options[:weight]

  end

  def ring_bell
    puts "Ring ring!"
  end

end

bike_1 = Bike.new(
                  gear: 18,
                  type: "chrome",
                  weight: 30
                  )
car_1 = Car.new(
                fuel: "gasoline",
                make: "Volkswagon",
                model: "Jetta"
                )


p car_1.fuel
p car_1.model
p car_1.make
p car_1
car_1.accelerate
p car_1

# bike_1.accelerate
# car_1.accelerate



# p bike_1
# p car_1

# bike_1.ring_bell
# car_1.honk_horn