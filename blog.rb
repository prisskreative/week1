class Blog

    def initialize           
		@posts = []
	end


    def add(post)           
		@posts.push(post)
	end


    def total_post
        @posts.each do |post|
        	puts post.hh
        end
    end

end # end blog


  


class Post

	attr_reader(:title, :date, :text)

    def initialize(title, date, text) 
	   @title = title
       @date  = date
       @text  = text
    end 

    def hh
      puts "#{@title} \n  #{@date} \n #{@text}" # format before send it to blog
      puts "----------------"
    end

  end # end post




post_1 = Post.new("Post title 1", "************", "aaa")
post_2 = Post.new("Post title 2", "************", "bbb")
post_3 = Post.new("Post title 3", "************", "ccc")


blogPost = Blog.new
blogPost.add(post_1)
blogPost.add(post_2)
blogPost.add(post_3)


blogPost.total_post


=begin

posts.each do |post|
	prints post
end


a = [1,2,3]
a.each do |x|
	prints x
end

=end






