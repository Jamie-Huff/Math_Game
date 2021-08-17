#creates our game class
class Game 
  def initialize
    #by default at the start of the game, the current player is player one, the other player is player 2.
    @current_player = 1
    @other_player = 2
  end

  def run_game
    #create two players, p1 and p2, with their names being their respective numbers
    p1 = Player.new(1)
    p2 = Player.new(2)
    #set the current player to player 1
    # set the other player to player 2
    @current_player = p1
    @other_player = p2
    #enter a loop which is our game cycle, ends when the player runs out of lives
    while @current_player.lives > 0 || @other_player.lives > 0 do
      #create a child component of the math question named q1
      #run q1.new_question, passing in our two players ->> head to math_questions.rb
      q1 = Math_question.new
      q1.new_question(@current_player, @other_player) 
      #after the current player finishes their turn checks to see if they have zero lives remaining
      #if they have no lives left, it ends the game and displays the game over message with the winner
      if @current_player.lives == 0
        puts "Game over! Player #{@other_player.name} wins with a score of #{@other_player.lives}/3 vs #{@current_player.lives}/3"
        #exit -> quits our while loop
        exit
      end
      #switches our current player
      valhold = @other_player # 1
      @other_player = @current_player # 1
      @current_player = valhold # 2
    end
  end
end