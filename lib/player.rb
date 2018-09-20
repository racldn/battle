class Player
  attr_reader :score, :name
  DEFAULT_SCORE = 60

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
  end

  def attacked
    @score -= 10
  end

end
