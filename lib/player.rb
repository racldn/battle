class Player
  attr_reader :name, :score
  DEFAULT_SCORE = 60

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
  end

  def attack(player)
    player.attacked
  end

  def attacked
    @score -= 10
  end



end
