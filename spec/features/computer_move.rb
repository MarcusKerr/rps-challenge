feature 'Bot can make a move' do
  scenario 'bot makes a move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Bot chose"
  end
end
