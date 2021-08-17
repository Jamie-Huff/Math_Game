class Math_question
  def initialize
    #Math_question has two values, num1 and num2 which our the randomly generated numbers
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def change_numbers
    #a function so when we want to change up the numbers that our function uses, we run this
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def new_question(current_player, other_player)
    #takes in our two players
    puts "----- NEW TURN -----"
    #says hi to the player whos turn it currently is and asks the question using our global variables of @num1 @num2 
    puts "Hi Player#{current_player.name}, what does #{@num1} + #{@num2} equal?"
    #asks the user for an input in the console, using gets
      #.chomp makes sure its on the same line
      #.to_i turns the value to an integer, by default its a string
    answer = gets.chomp.to_i
    # if they answered correctly
    if @num1 + @num2 == answer
    # says they are correct
      puts "Yes! You are correct"
    # displays the current score
      puts "#{current_player.lives}/3 vs #{other_player.lives}/3"
    else 
    # if they answered incorrectly
      puts "Seriously? No!"
    # runs the change_score command ->> players.rb file
      current_player.change_score
      puts "Player #{current_player.name} lives: #{current_player.lives}/3 vs Player #{other_player.name} lives: #{other_player.lives}/3"
    end
  end
end
