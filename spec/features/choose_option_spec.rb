feature 'choosing one option' do
  scenario 'select scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors!'
  end
end 