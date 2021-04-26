class Player
  attr_accessor :lives, :name
  MAX_LIVES = 3
  def initialize(name)
    self.lives = MAX_LIVES
    self.name = name
  end

  def to_s
    "#{name}: #{lives}/#{MAX_LIVES}"
  end

  def player_got_attacked?
  end

  protected 
  def attacked
    self.lives -= 1
  end

end


p1 = Player.new('p1')
puts p1
p1.attacked
puts p1