class Math_question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def change_numbers
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def new_question(current_player, other_player)
    puts "----- NEW TURN -----"
    puts "Hi #{current_player.name}, what does #{@num1} + #{@num2} equal?"
    answer = gets.chomp.to_i
    if @num1 + @num2 == answer
      puts "Yes! You are correct"
      puts "#{current_player.lives}/3 vs #{other_player.lives}/3"
    else 
      puts "Seriously? No!"
      current_player.change_score
      puts "Player #{current_player.name} lives: #{current_player.lives}/3 vs Player #{other_player.name} lives: #{other_player.lives}/3"
    end
  end
end
