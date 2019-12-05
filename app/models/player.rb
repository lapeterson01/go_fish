class Player
  attr_reader :name, :hand, :books

  def initialize(user)
    @name = user.name
    @hand = PlayerHand.new
    @books = []
  end

  def hand_count
    hand.count
  end

  def books_count
    books.count
  end
end
