class GoFishGame
  attr_reader :deck, :players

  def initialize
    @deck = CardDeck.new
    @players = {}
  end
end
