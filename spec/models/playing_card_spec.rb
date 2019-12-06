require 'rails_helper'

RSpec.describe PlayingCard, type: :model do
  let(:card) { PlayingCard.new('A', 'Spades') }

  describe '#initialize' do
    it 'creates a standard playing card with rank and suit' do
      expect(card.rank).to eq 'A'
      expect(card.suit).to eq 'Spades'
    end
  end

  describe 'equality' do
    it 'returns equal as long as rank and suit are equal' do
      equal_card = PlayingCard.new('A', 'Spades')
      expect(card).to eq equal_card
    end

    it 'returns false if rank or suit are not equal' do
      card_with_different_rank = PlayingCard.new('K', 'Spades')
      expect(card).to_not eq card_with_different_rank
      card_with_different_suit = PlayingCard.new('A', 'Clubs')
      expect(card).to_not eq card_with_different_suit
    end
  end
end
