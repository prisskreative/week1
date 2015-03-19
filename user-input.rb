=begin

program what is your name

user  -  priss

program - what is your password

user  - hhhhh 

program - if is bad 

program - wrong password


program - if its good


user - write some test 

program - count words

=end

class Authenticator
     def initialize
     	@validate_user_list = {}
     	@validate_user_list['priscilla'] = "swordfish"
     	@validate_user_list['micah'] = "coffee"
     	@validate_user_list['nizar'] = "pizza"
     end
     def authenticate
     	puts "what is your name"
     	user = gets.chomp
     	puts "what is your password"
     	password = gets.chomp
        if (@validate_user_list[user] === password)
        	puts "your awesome"
            puts "write some text"
            word_counter = WordCounter.new
            word_counter.count(gets.chomp)
        else 
        	puts "wrong user name and password"
        end
     end

end

class WordCounter
	def count(words)
		word_count = words.split(" ").length
		puts "word count: #{word_count}"
	end
end



# ----------------

# 2 option

class Authenticator
     def initialize(username, password)
     	@username = username
     	@password = password
     end
 end



def valid?(username,password)
	return username == @username && password == @password
end
end




class WordThing
	def initialize(input)
		@text = input
	end

	def world_count
		return @text.split('').size
	end
end

#credentials = [
#	{username: 'Nizar', password: 'sss'},
#	{username: 'priss', password: 'sss'},
#]


auth = Authenticator.new(username,password)

        puts "what is your name"
     	user = gets.chomp

     	puts "what is your password"
     	password = gets.chomp

if !auth.valid?(username,password)
	puts "you messed up"
else 
	puts ''
    puts "good"
    input = gets.chomp

    word_thing = WorldThing.new(input)
    puts "you world count is #{word_thing.word_count}"

end
   






