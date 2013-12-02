class Deck
 
  face_value = [1,2,3,4,5,6,7,8,9,10,1,11]
  
  def shuffle
    3.times do 
      face_value.shuffle!
    end
  end
  
end