feature 'Attack' do
  scenario 'Attacks player with confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Batman attacked Spiderman'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Spiderman attacked Batman'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Batman : 100'
    expect(page).to have_content 'Batman : 90'
  end

  scenario 'reduce Player 1 HP by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  click_button 'Attack'
  click_button 'OK'
  expect(page).not_to have_content 'Batman : 100'
  expect(page).to have_content 'Spiderman : 90'
end
end