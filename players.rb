class Player

  attr_accessor :lives, :name
  #player has a name, and 3 lives by default
  def initialize(name)
    @name = name
    @lives = 3
  end
  
  #method to change the score, takes away one life when the player answers a question wrong
  def change_score
    @lives = @lives - 1
  end

end
