puts "What is your birthdate? Please use MMDDYYYY format."
bd = gets
def birthpath(birthdate)
	if (birthdate.to_i == 0) 
		puts "Bad input, please enter your birthdate in MMDDYYYY format."
 
	else 
		sum = 0
		for j in 0..(birthdate.length - 1) do
			sum += birthdate[j].to_i
			puts sum
		end
		while (sum > 9) do 
			sum = sum.to_s
			newsum = 0
			for j in 0..(sum.length - 1) do 
				newsum += sum[j].to_i
				puts newsum
			end
			sum = newsum
		end
	end
	return sum
end
def pathdesc(s)
	case s 
		when 9 
			message =  "Your birth path number is 9. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. \nRuled by Mars."
			
		when 8
			message =  "Your birth path number is 8. \nThis is the manager. Number Eight is a strong, successful, and 
			material vibration. \nRuled by Saturn."
			
		when 7 
			message =  "Your birth path number is 7. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not 
			very attached to material things, are introspective, and generally quiet. \nRuled by Neptune."
			
		when 6
			message =  "Your birth path number is 6. \nThis is the peace lover. The number six is a loving, stable, and 
			harmonious vibration. \nRuled by Venus."
			
		when 5 
			message =  "Your birth path number is 5.\nThis is the freedom lover. The number five is an intellectual vibration. These are \'idea\' people with a love of variety and the ability to adapt to most situations. \nRuled by Mercury."
			
			
		when 4 
			message =  "Your birth path number is 4. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. \nRuled by Uranus."
			
		when 3
			message =  "Your birth path number is 3. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three\'s enjoy life and have a good sense of humor. \nRuled by Jupiter."
			
		when 2
			message = "Your birth path number is 2. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. \nIt is a gentle, considerate, and sensitive vibration. \nRuled by the Moon."
			
		when 1
			message =  "Your birth path number is 1.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. \nRuled by the Sun."
			
		else 
			message =  "Something has gone wrong in the calculations."
			
	end 
end 

bnum = birthpath(bd)
btext = pathdesc(bnum)
puts "You were marked with #{bnum}. #{btext}"