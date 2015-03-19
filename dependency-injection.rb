class Car
    def initialize(engine)
        @engine = engine
    end

    def noise
        #this is where we'll inherit our sound
        puts "VROOM VROOM"
        return @engine.rev
    end
end

class Engine

    def rev
        puts "Caclink Caclink"
    end
end

engine = Engine.new
car = Car.new(engine)
car.noise


#-----------


class Car
    def initialize(engine)
        @engine = engine
    end

    def dev
        @engine.rev
        puts "VROOM VROOM"
    end
end

class Engine

    def rev
        puts "Caclink Caclink"
    end
end

engine = Engine.new
car = Car.new(engine)

#this should make the sound 
#and also call Engine#rev
car.rev









