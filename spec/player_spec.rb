require 'player'

describe Player do
  subject(:spiderman) { Player.new('Spiderman') }
  subject(:batman) { Player.new('Batman') }

  describe '#return_name' do
    it 'should return the player name' do
      expect(spiderman.name).to eq('Spiderman')
   end
  end

  describe '#hit_points' do
  it 'returns the hit points' do
    expect(spiderman.hit_points).to eq described_class::DEFAULT_HP
  end
end

describe '#attack' do
  it 'damages the player' do
    expect(batman).to receive(:receive_damage)
    spiderman.attack(batman)
  end
end

describe '#receive_damage' do
  it 'reduces the player hit points' do
    expect { spiderman.receive_damage }.to change { spiderman.hit_points }.by(-10)
  end
end
end