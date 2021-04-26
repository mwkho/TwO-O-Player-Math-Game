class Question
  attr_accessor :num1, :num2, :answer
  MAX_NUMBER = 20
  def initialize
    self.num1 = rand(1..MAX_NUMBER)
    self.num2 = rand(1..MAX_NUMBER)
    self.answer = self.num1 + self.num2
  end

  def to_s
    "What is #{num1} + #{num2}"
  end
  
  def generate
    self.num1 = rand(1..MAX_NUMBER)
    self.num2 = rand(1..MAX_NUMBER)
    self.answer = self.num1 + self.num2
  end

  def is_correct?(input)
    input.to_i == self.answer
  end

end