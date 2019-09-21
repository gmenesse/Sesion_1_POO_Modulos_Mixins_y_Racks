class Vehicle

  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts 'El motor se ha encendido!'
  end
end

  class Car < Vehicle
    @@counter = 0

    def initialize(model, year)
      super(model, year)
      @@counter += 1
    end

    def self.total
      @@counter
    end

    def engine_start
      super
      'El motor se ha encendido!'
    end

    def specs
      "soy el auto modelo #{@model}, año #{@year}"
    end
  end


new_car = Car.new('Corsa',2019)
# puts Car.total
puts new_car.specs

10.times do |i|
  Car.new("Modelo#{i}",2019)
end

puts Car.total
