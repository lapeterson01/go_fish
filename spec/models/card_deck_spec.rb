require 'rails_helper'

RSpec.describe CardDeck, type: :model do
  let(:deck) { CardDeck.new }

  describe '#initialize' do
    it 'creates a deck of 52 standard playing cards' do
      expect(deck.count).to eq 52
    end
  end

  describe 'equality' do

    it 'allows two instances of CardDeck to be equal as long as they have the same cards in the same order' do
      deck2 = CardDeck.new
      expect(deck).to eq deck2
    end

    it 'should return false if the cards are different or in a different order' do
      card1 = PlayingCard.new('A', 'Spades')
      card2 = PlayingCard.new('A', 'Clubs')
      deck1 = CardDeck.new([card1])
      deck2 = CardDeck.new([card2])
      expect(deck1).to_not eq deck2
    end
  end
end
