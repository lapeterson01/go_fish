require 'rails_helper'

RSpec.describe PlayerHand, type: :model do
  let(:hand) { PlayerHand.new }

  describe '#initialize' do
    it 'creates an empty hand' do
      expect(hand.cards).to eq []
    end
  end

  describe '#count' do
    it 'returns a count of the cards in player hand' do
      expect(hand.count).to eq 0
    end
  end
end
