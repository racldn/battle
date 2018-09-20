require_relative 'player'

class Game
  attr_reader :players, :current_player

  def initialize(name1, name2, player = Player)
    @players = [player.new(name1), player.new(name2)]
    @current_player = first
  end

  def attack(player)
    player.attacked
    turn
  end

  def first
    @players[0]
  end

  def second
    @players[1]
  end

  def turn
    if @current_player == first
      @current_player = second
    else
      @current_player = first
    end
  end


end
