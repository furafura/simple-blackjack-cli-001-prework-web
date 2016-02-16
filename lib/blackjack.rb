require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  selector = nil
  prompt_user
  while selector == nil
    selector = get_user_input
    if selector == 'h'
      card_total += deal_card
    elsif selector == 's'
      break
    else
      invalid_command
      selector = nil
    end
  end
      card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  counter = initial_round
  until counter > 21
    counter = hit?(counter)
    display_card_total(counter)
  end
  end_game(counter)
end
    
