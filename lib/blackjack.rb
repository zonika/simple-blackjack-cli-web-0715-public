def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer=gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  c1=deal_card
  c2=deal_card
  tot=c1+c2
  display_card_total(tot)
end

def hit?(total)
  # code hit? here
  prompt_user
  input=get_user_input
  case input
    when "h"
      c=deal_card
      display_card_total(total+c)
      total+c
    when "s"
      total
    end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total=initial_round
  until total>21
    total=hit?(total)
  end
  end_game(total)
end
    
