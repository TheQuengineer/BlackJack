require_relative 'dealer'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
         @cards << Card.new(suit, face_value)
       end
  end

 shuffle

  def shuffle
    3.times do 
      face_value.shuffle!
    end
  end
  
  def deal_player_cards
     cards.pop
  end

  def get_deck
    cards.size
  end
  
end

 