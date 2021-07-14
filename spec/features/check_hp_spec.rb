feature 'Check hp' do
  scenario 'Player 1 can see Player 2 hit points'do
  visit('/')
  fill_in :player_1_name, with: 'Spiderman'
  fill_in :player_2_name, with: 'Batman'
  click_button 'Submit'
  expect(page).to have_content 'Batman hit points : 100'
  end
end