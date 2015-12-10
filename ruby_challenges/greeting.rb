def getHour
	current_time = Time.new
	current_hour = current_time.hour
end

def getName
	puts "Hi! What's your name?"
	name = gets.to_s.capitalize.chomp
end

def greeting(name)
	current_hour = getHour
	
	if (current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif (current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif (current_hour > 18 || current_hour < 3)
		time = "evening"
	end
	
	puts "Good #{time}, #{name}!"
end
	
greeting(getName)