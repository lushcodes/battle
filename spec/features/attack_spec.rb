feature 'Attack' do
  scenario 'Attacks player with confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Spiderman attacked Batman'
  end
end