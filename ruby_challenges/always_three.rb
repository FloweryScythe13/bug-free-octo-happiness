puts "Enter a natural number"
numba1 = gets.to_i

def main(n)
	puts (((n + 5) * 2 - 4) / 2 - n).to_s + ". It will always be 3!"
end

main(numba1)