require 'rails_helper'

RSpec.describe GoFishGame, type: :model do
  let(:go_fish) { GoFishGame.new }

  describe '#initialize' do
    it 'creates a go fish game with a deck of 52 standard playing cards' do
      expect(go_fish.deck).to eq CardDeck.new
    end

    it 'starts with an empty list of players' do
      expect(go_fish.players).to eq({})
    end
  end
end
