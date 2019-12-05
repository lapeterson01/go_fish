require 'rails_helper'

RSpec.describe 'Games', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  it 'renders a "Play Game" button' do
    visit root_path
    expect(page).to have_button 'Play Game'
  end
end
