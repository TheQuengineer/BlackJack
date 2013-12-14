require_relative 'dealer'
require_relative 'deck'

class Player
    attr_accessor :name, :score_total, :current_hand_count
    attr_reader :choice
  
  def initialize(name, score_total=0, current_hand_count=0, choice="")
    @name = name 
    @score_total = score_total
    @current_hand_count = current_hand_count
    @choice = choice
  end
  
  def make_choice(choice)
      choice = gets.chomp
     case 
       when choice == "1"
        hit(current_hand_count)
       when choice == "2"
        stay 
       when choice == "3"
         quit
       else
         puts "You did not Enter one of the choices Please Enter 1, 2, or 3"
       end
  end
  
  def hit(current_hand_count)
    score_total += Dealer.calculate_player_hand_count.to_i
    puts "Your card count so far is #{current_hand_count.to_s}"  
    puts "After hit your total is #{score_total}"  
  end
  
  def stay
    puts "Your count is #{score_total}"
  end
  
  def quit
    exit
  end
  
   
end