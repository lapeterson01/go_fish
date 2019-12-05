class PlayerHand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def count
    cards.count
  end
end
