# ----------

# 1 option

class Car 
    attr_reader(:brand) #outside access


=begin
     def initialize (variable) 
	    @brand = variable  
	end
=end

	def initialize (brand, sound) 
	    @brand = brand # instances ex
	    @sound = sound
	end

end

ferrari = Car.new('Ferrari' , 'Vroomm')  
audi = Car.new('Audi' , 'Bureung') 

 
puts 'The brand is: ' + ferrari.brand  + ' sound ' + ferrari.sound

puts 'The brand is: ' + audi.brand  + ' sound ' + audi.sound




# -----------



# 2 option

class Car 
    attr_reader(:brand, :sound)

    @@number_of_cars = 0
    @@brands = []

	def initialize (brand, sound) 
	    @brand = brand # instances ex
	    @sound = sound
	    @@number_of_cars += 1

	if !@@brands.include?(brand) # no duplicates # is this brand register
	  @@brands.push(brand)
	  end 
	end

	def rev
		puts @sound + "! I'm a " + @brand
	end

	def total_cars
		return @@number_of_cars
	end

	def brands
		return @@brands
    end
    
end

#####################################
# Application code start here
#####################################


first_car = Car.new('Ferrari' , 'Vroomm')  
second_car = Car.new('Audi' , 'Bureung') 
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Honda', 'pew pew')
second_car = Car.new('Toyota', 'sdfsfsfsfsf')
 
first_car.rev
second_car.rev

puts 'total cars: ' + second_car.total_cars.to_s
puts 'registered brands: ', second_car.brands


# puts 'total cars: ' + Car.total_cars.t_s
# puts 'registered brands: ', Car.brands




# ---------




# 3 option - write - read file

class Car 
    attr_reader(:brand, :sound)

    IO.write('total_cars.txt', 0)
    @@brands = []

	def initialize (brand, sound) 
	    @brand = brand # instances ex
	    @sound = sound

	    current = IO.read('total_cars.txt').to_i
	    IO.write('total_cars.txt', current + 1)

	if !@@brands.include?(brand) # no duplicates # is this brand register
	  @@brands.push(brand)
	  end 
	end

	def rev
		puts @sound + "! I'm a " + @brand
	end

	def other_method
		puts 'hi this is other method'
	end

	def self.total_cars
		return IO.read('total_cars.txt')
	end

	def self.brands
		return @@brands
    end
    
end

#####################################
# Application code start here
#####################################


first_car = Car.new('Ferrari' , 'Vroomm')  
second_car = Car.new('Audi' , 'Bureung') 
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Honda', 'pew pew')
second_car = Car.new('Toyota', 'sdfsfsfsfsf')
 
first_car.rev
second_car.rev

puts 'total cars: ' + second_car.total_cars.to_s
puts 'registered brands: ', second_car.brands


# ---------


# 4 extend 

class Car 
    attr_reader(:brand, :sound)

    IO.write('total_cars.txt', 0)
    @@brands = []

	def initialize (brand, sound) 
		puts 'calling cars'
	    @brand = brand # instances ex
	    @sound = sound

	    current = IO.read('total_cars.txt').to_i
	    IO.write('total_cars.txt', current + 1)

	if !@@brands.include?(brand) # no duplicates # is this brand register
	  @@brands.push(brand)
	  end 
	end

	def rev
		puts @sound + "! I'm a " + @brand
	end

	def other_method
		puts 'hi this is other method'
	end

	def self.total_cars
		return IO.read('total_cars.txt')
	end

	def self.brands
		return @@brands
    end

    class RacingCar < Car
    	def initialize (brand, sound) 
    		super (brand, sound)
    
end

#####################################
# Application code start here
#####################################


first_car = Car.new('Ferrari' , 'Vroomm')  
second_car = Car.new('Audi' , 'Bureung') 
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Porsche', 'Put put put')
second_car = Car.new('Honda', 'pew pew')
second_car = Car.new('Toyota', 'sdfsfsfsfsf')
 
first_car.rev
second_car.rev

puts 'total cars: ' + second_car.total_cars.to_s
puts 'registered brands: ', second_car.brands


# ---------


class Person
	attr_reader(:name, :age)

    def initialize (name, age)
       @name = name
       @age = name
    end

    def 

end

# -------------

# Cars Array

class Car

    def initialize(brands)
        @brands = brands
    end
    def noise
        puts "BOOOOM"
    end
end


[Car.new("ferrari"), Car.new("Porsche"), Car.new("Maseratti")].each do |brands|
    brands.noise
end


# ----------



# Cars Array

class Car

    def initialize(noise)
        @noise = noise
    end
    def rev
        puts @noise    
    end
end


arr = [Car.new("puts"), Car.new("vroom")]
arr.each {|car| car.rev}


# ------------

block1 = lambda { |car| car.rev}
block2 = lambda do |car| 
	car.rev
end

block3 = proc.new { |car| car.rev}




# block1.call(Car.new("bam, bam"))

# arr.each &block3


super_block lambda do |car|
	puts "the brand is #{car.brand}"
    block1.call(Car)
end

super.block.car(Car.new("Maseratti", "VAMM"))

















