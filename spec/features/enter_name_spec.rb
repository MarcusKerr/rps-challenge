feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Waka, lets play Rock, Paper, Scissors!'
  end 
end
