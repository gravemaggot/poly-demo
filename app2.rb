class Airplane # самолет
    attr_reader :model    # модель
    attr_reader :altitude # высота
    attr_reader :speed    # скорость

    def initialize(model)
        throw "Your plane in fire" if model == 'SuperJet100'
        @model = model
        @altitude = 0
        @speed = 0
    end

    def fly
        @speed    = 800
        @altitude = 10000
    end

    def land
        @speed    = 0
        @altitude = 0
    end

    def moving?
        return @speed > 0
    end

    def status
        "Model: #{@model}, speed: #{@speed}, alt: #{@altitude}"
    end
end

plane1 = Airplane.new('Boeng747')#('SuperJet100')}"
puts plane1.status
puts "Is moving: #{plane1.moving?}"

plane1.fly
puts plane1.status
puts "Is moving: #{plane1.moving?}"

plane1.land
puts plane1.status
puts "Is moving: #{plane1.moving?}"
