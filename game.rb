class Game 
  def initialize
    @current_player = 1
    @other_player = 2
  end

  def run_game
    p1 = Player.new(1)
    p2 = Player.new(2)
    @current_player = p1
    @other_player = p2
    while @current_player.lives > 0 || @other_player.lives > 0 do
      q1 = Math_question.new
      q1.new_question(@current_player, @other_player) 
      if @current_player.lives == 0
        puts "Game over! Player #{@other_player.name} wins with a score of #{@other_player.lives}/3 vs #{@current_player.lives}/3"
        exit
      end
      valhold = @other_player # 1
      @other_player = @current_player # 1
      @current_player = valhold # 2
    end
  end
end