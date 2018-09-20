require 'game'

describe Game do


  let(:player1) { double :player1, attacked: nil }
  let(:player2) { double :player2, attacked: nil }
  let(:player_class) { double :player_class }
  before() {
    allow(player_class).to receive(:new).with('Steven') { player1 }
    allow(player_class).to receive(:new).with('Mary') { player2 }
    @game = Game.new('Steven', 'Mary', player_class)
  }

  describe 'initialize' do
    it 'creates a new instance of the game class with a list of players' do
      expect(@game.players).to eq [player1, player2]
    end

    it 'should initialize with player1 as current player' do
      expect(@game.current_player).to eq(player1)
    end

  end

  describe 'attack'
    it 'responds to attack' do
      expect(@game).to respond_to :attack
    end

    it 'runs turn method' do
      expect(@game).to receive(:turn)
      @game.attack(player1)
    end

    it 'attacks a player' do
      expect(player1).to receive :attacked
      @game.attack(player1)
    end

    describe 'turn' do
      it 'receives the turn method' do
        expect(@game).to respond_to(:turn)
      end

      it 'switches the turn between players' do
        @game.turn
        expect(@game.current_player).to eq(player2)
      end
    end

end
