require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:user) { User.new name: 'Player' }
  let(:player) do
    user.save
    Player.new(user)
  end

  describe '#initialize' do
    it 'creates a player with given name and an empty hand and books count set to 0' do
      expect(player.name).to eq 'Player'
      expect(player.hand_count && player.books_count).to eq 0
    end
  end
end
