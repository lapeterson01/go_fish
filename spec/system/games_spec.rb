require 'rails_helper'

RSpec.describe 'Games', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  it 'renders a "Play Game" button' do
    visit root_path
    expect(page).to have_button 'Play Game'
  end

  it 'starts a new game' do
    visit root_path
    click_on 'Play Game'
    expect(page).to have_content 'Player 1'
    expect(page).to have_content 'Cards: 7'
  end
end
