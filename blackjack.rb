require_relative 'deck'
require_relative 'player'
require_relative 'dealer'


  puts "Enter Your name"
  entered_name = gets.chomp

  player = Player.new(entered_name)
  dealer = Dealer.new

  dealer.say_intro(entered_name)  
  
  puts "Enter Your Choice"
  entered_choice = gets.chomp
  while entered_choice != "3" do
     player.make_choice(entered_choice)
     # dealer.deal_cards
     #      dealer.say_players_card_value_total
     #      dealer.calculate_player_hand_count
     #      dealer.get_dealer_total
     #      dealer.determine_winner
     #      dealer.ask_player_to_play_again
    end  
    
  if entered_choice == "3"
    puts "Thanks for Playing!"
  end

  

  
  