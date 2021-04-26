class Game
  attr_accessor :p1, :p2, :q
  def initialize
    #  Get the 2 players name and create a new question object
    puts "Player 1 name? "
    p1_name = gets.chomp 

    puts "Player 2 name? "
    p2_name = gets.chomp 

    self.p1 = Player.new(p1_name)
    self.p2 = Player.new(p2_name)
    self.q = Question.new
  end


  def start  
    over = false
    player = self.p1
    until over do
      puts "#{player.name}: #{q}"
      print "> "
      user_answer = gets.chomp
      validation = q.is_correct?(user_answer)
      puts "#{player.name}: #{validation ? "You are correct": "Not correct. Lose a life!"}"
      player.is_attacked(validation)

      q.generate
      if (self.p1.lives == 0 || self.p2.lives == 0)
        winner = @p2.name
        if self.p1.this_beat_other?(self.p2)
          winner = self.p1.name
        end
        over = true
        round = "GAME OVER"
      end
      
      if winner
        puts "#{winner} has won!"
      end

      if !winner
        puts "\n#{self.p1} vs. #{self.p2}"
        round = "NEW TURN"
        player = switch(player)
      end
      puts "----- #{round} ------"
    end

    puts "Good-bye"
  end

  private 
  # switch players method
  def switch(player)
    player == self.p1 ? self.p2 : self.p1
  end
end
