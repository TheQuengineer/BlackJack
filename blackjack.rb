require_relative 'deck'
require_relative 'player'
require_relative 'dealer'


  puts "Enter Your name"
  entered_name = gets.chomp

  player = Player.new(entered_name)
  dealer = Dealer.new

  dealer.say_intro(entered_name)  
    

  

  
  