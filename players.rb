class Player

  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def prompt(*args)
    print(*args)
    gets
  end

  def change_score
    @lives = @lives - 1
  end

  def ask_question()
  end
end
