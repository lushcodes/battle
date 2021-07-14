require 'player'

describe Player do
  subject(:spiderman) { Player.new('Spiderman') }

  describe '#return_name' do
    it 'should return the player name' do
      expect(spiderman.name).to eq('Spiderman')
   end
  end
end