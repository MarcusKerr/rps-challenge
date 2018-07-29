feature 'Choose a move' do
  scenario 'choosing spock' do
    sign_in_and_play
    click_button 'Spock'
    expect(page).to have_content 'waka chose Spock'
  end
end
