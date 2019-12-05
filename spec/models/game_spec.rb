require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:test_game) { Game.new }

  it 'should be valid' do
    expect(test_game).to be_valid
  end
end
