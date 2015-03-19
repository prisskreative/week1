=begin

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


#--------





class Car
  # Add sound to the initializer
  def initialize(brand, sound)
    @brand = brand
    @sound = sound
  end
 
  def noise
    puts @sound
  end
 
  # Add pretty string represention
  def to_s
    return "Brand: #{@brand}, Sound: #{@sound}"
  end
end
 
# Start with an array of sounds
sounds = [ 'vroooom', 'put put put', 'chug chug chug' ]
 
# Map over the array of sounds and create cars from them
cars = sounds.map do |sound|
  Car.new('Toyota', sound)
end
 
# Print out each car on a single line
cars.each do |car|
  puts car
end




# -------



class Car

    def initialize(brands)
        @brands = brands
    end

    def describe
        return @brands
    end

    def noise
        puts "BOOOOM"
    end
end


# [Car.new("ferrari"), Car.new("Porsche"), Car.new("Maseratti")].each do |brands|
#     brands.noise
# end

# # ferrari = Car.new ("Ferrari")
# # ferrari.noise
# [1,2,3].reduce{|sum, x| sum + x}


car = [Car.new("Toyota "), Car.new("Pinto "), Car.new("Volvo")]
# car.each do {||}

total = car.reduce("") do |total, car| 
    total + car.describe
end

puts total


#--------------




class Car

    def initialize(brands)
        @brands = brands
    end
end


car = [Car.new("Toyota "), Car.new("Pinto "), Car.new("Volvo")]

final = car.reduce('') do |brands, car|
  brands += car.brands + ''
end

puts final



# Explanation

car = [Car.new("Toyota "), Car.new("Pinto "), Car.new("Volvo")]

# 3 elements - Reduce will run 2-3 times

# 5 elements - Reduce will run 4-5 times

Run 1 = brands carry Toyota
Run 2 = brands carry Toyota and Pinto
Run 3 = brands carry toyota pinto and volvo


# -----------

=end


