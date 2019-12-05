require 'rails_helper'

RSpec.describe CardDeck, type: :model do
  let(:deck) { CardDeck.new }

  describe '#initialize' do
    it 'creates a deck of 52 standard playing cards' do
      expect(deck.count).to eq 52
    end
  end
end
