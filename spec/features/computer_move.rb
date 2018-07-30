feature 'game choose an option' do
  scenario 'game can choose rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "A.I chose Rock!"
  end
end
