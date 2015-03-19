class Keynote
	attr_reader :message 

	def initialize      
		@slides = []
	end

	def add(slide)            
		@slides.push(slide)
	end

end

class Slide

	attr_reader(:message)  # what they have in common

	def initialize(message)
       @message = message
   end

   def show
    puts @message 
  end

end

first_slide  = Slide.new('Prepare for the next big thing')
second_slide = Slide.new('The iTerminal')
third_slide  = Slide.new('Is here')

allSlides = Keynote.new
allSlides.add(first_slide)
allSlides.add(second_slide)
allSlides.add(third_slide)


first_slide.show
second_slide.show
third_slide.show

allSlides


# key symbol 
# prompt








