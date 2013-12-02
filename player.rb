require_relative 'dealer'

class Player
    attr_accessor :name, :score_total
  
  def initialize(name, score_total=0, current_hand_count=0)
    @name = name 
    @score_total = score_total
    @current_hand_count = current_hand_count
  end
  
  def make_choice(choice)
    choice = gets.chomp
     case 
       when @choice == "1"
        hit
       when @choice == "2"
        stay 
       when @choice == "3"
         quit
       else
         puts "You did not Enter one of the choices Please Enter 1, 2, or 3"
       end
  end
  
  def hit
    score_total = current_hand_count + Dealer.calculate_player_hand_count.to_i   
  end
  
  def stay
    puts "Your count is #{current_hand_count}"
  end
  
  def quit
    #break
  end
  
   
end