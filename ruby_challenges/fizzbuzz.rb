# The FizzBuzz Script

for n in 1..100 do 
	if (n % 3 == 0 && n % 5 == 0)
		puts "FizzBuzz"
	elsif (n % 3 == 0)
		puts "Fizz"
	elsif (n % 5 == 0)
		puts "Buzz"
	else
		puts n
	end
	#n += 1 
end
