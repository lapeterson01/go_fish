class CardDeck
  attr_reader :cards

  RANKS = %w[A K Q J 10 9 8 7 6 5 4 3 2].freeze
  SUITS = %w[S C D H].freeze

  def initialize(cards = CardDeck.create_standard_deck)
    @cards = cards
  end

  def self.create_standard_deck
    RANKS.flat_map do |rank|
      SUITS.flat_map do |suit|
        PlayingCard.new(rank, suit)
      end
    end
  end

  def count
    cards.count
  end
end
