feature 'choosing one option' do

  scenario 'select rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Marcus you chose Rock'
  end

  scenario 'select paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Marcus you chose Paper'
  end

  scenario 'select scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Marcus you chose Scissors'
  end
end 
