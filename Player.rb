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

  def is_attacked(validation)
    if !validation
      self.lives -= 1
    end
  end

  def this_beat_other?(player)
    player.lives == 0
  end

  
end
