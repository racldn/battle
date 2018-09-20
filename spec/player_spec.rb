require 'player'

describe Player do
  subject(:robbie) { Player.new("Robbie") }
  subject(:alex) { Player.new("Alex") }

  it "returns player name" do
    expect(robbie.name).to eq("Robbie")
  end

  it 'returns the hit points' do
    expect(robbie.score).to eq(Player::DEFAULT_SCORE)
  end

  it 'when being attacked reduces my HP by 10' do
    robbie.attacked
    expect(robbie.score).to eq(Player::DEFAULT_SCORE - 10)
  end

end
