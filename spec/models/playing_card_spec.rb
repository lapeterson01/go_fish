require 'rails_helper'

RSpec.describe PlayingCard, type: :model do
  let(:card) { PlayingCard.new('A', 'Spades') }

  describe '#initialize' do
    it 'creates a standard playing card with rank and suit' do
      expect(card.rank).to eq 'A'
      expect(card.suit).to eq 'Spades'
    end
  end
end
