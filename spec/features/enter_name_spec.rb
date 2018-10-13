feature 'Enter name' do
  scenario 'register and see name' do
    sign_in_and_play
    expect(page).to have_content 'Marcus, lets play!'
  end 
end
