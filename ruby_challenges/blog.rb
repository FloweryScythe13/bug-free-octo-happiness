class Blog 
	#def initialize
	#	posts = Array.new
	#	postnum = posts.length
	#end 
	 
	
end



class BlogPost < Blog
	@@posts = Array.new
	@@postnum = 0
	
	def publish_all
		@@posts.each {|page| puts page.inspect}
	end 
	
	def get_postnum
		return @postnum
	end
	
	attr_accessor :title, :content, :author
	
	def set_pubdate(d)
		@pubdate = d 
	end
	
	def initialize
		@@posts.push(self)
		@@postnum += 1
	end
end

def mainfunc
	puts "Do you want to add a new blog post? [Y/N]"
	answer = gets.downcase.chomp
	while (answer == "y") do 
		newpost = BlogPost.new
		puts newpost.inspect
		puts "Post title: "
		newpost.title = gets.chomp
		puts "Post author: "
		newpost.author = gets.chomp 
		puts "Post body: "
		newpost.content = gets 
		curr_time = Time.now 
		newpost.set_pubdate( curr_time )
		puts newpost.inspect
		puts newpost.get_postnum
		puts "Do you want to add a new blog post? [Y/N]"
		answer = gets.downcase.chomp
	end
	newpost.publish_all
end 
	
mainfunc
