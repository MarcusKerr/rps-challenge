feature 'game options' do
  scenario 'see the options rock paper and scissors' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end
end