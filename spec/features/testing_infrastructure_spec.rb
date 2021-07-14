feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Spiderman'
    fill_in :player_1_name, with: 'Batman'
    click_button 'Submit'
    expect(page).to have_content 'Spiderman vs. Batman'
  end
end