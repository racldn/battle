require 'player'

describe Player do
  subject { Player.new("Robbie") }

  it "returns player name" do
    expect(subject.name).to eq("Robbie")
  end

end
