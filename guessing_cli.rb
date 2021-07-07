# require "pry"

# Code your solution here!

def start
  player_number = 0
  until player_number > 0 && player_number < 6
    puts "Guess a number between 1 and 6."
    player_number = gets.chomp.to_i
  end
  return player_number
end

def quit
  puts "Goodbye!"
end

def run_guessing_game
  play_again = true
  until play_again == false
    player_number = start
    computer_number = rand(1..6)
    # binding.pry
    if player_number == computer_number
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{computer_number}."
    end
    puts "Play again?"
    play_again = gets.chomp.downcase[0] == "y" ? true : false
  end
  quit
end

# run_guessing_game