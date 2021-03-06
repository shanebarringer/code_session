
def start_game
	print "Welcome to rps. Enter your name to get started: "
	@name = gets.chomp
	return @name
end

def print_separator
	puts "-" * 80
end

def play_game
	weapons = ["rock", "paper", "scissors"]

	
	print "Okay, #{@name}, type in either rock, paper, or scissors: "
	user_choice = gets.chomp.downcase

	print_separator



	until user_choice == "rock" || user_choice == "paper" || user_choice == "scissors"
		puts "Only the characters rock, paper, or scissors will suffice. Try again."
		user_choice = gets.chomp.downcase
		print_separator
	end

	

	if user_choice == "rock"|| user_choice == "paper" || user_choice == "scissors"
		comp_answer = weapons.sample
		puts "#{@name} chose: #{user_choice}"
		puts "I chose: #{comp_answer}"
		print_separator
	end

			if "#{comp_answer}" == "scissors" && "#{user_choice}" == "rock" || "#{comp_answer}" == "rock" && "#{user_choice}" == "paper" || "#{comp_answer}" == "paper" && "#{user_choice}" == "scissors"
				puts "you win!"			

			elsif "#{comp_answer}" == "rock" && "#{user_choice}" == "scissors" || "#{comp_answer}" == "scissors" && "#{user_choice}" == "paper" || "#{comp_answer}" == "paper" && "#{user_choice}" == "rock"
				puts "you lose"
	

			else "#{comp_answer}" == "scissors" && "#{user_choice}" == "scissors" || "#{comp_answer}" == "paper" && "#{user_choice}" == "paper" || "#{comp_answer}" == "rock" && "#{user_choice}" == "rock"	
				puts "we tied!"
	
			end
	play_again	

end			

def play_again
	puts "would you like to play again (y/n)"
	response = gets.chomp 
		if response == "y"
			print_separator
			play_game
		else
			puts "See ya later!"
		end
end


start_game
print_separator
play_game
print_separator
