feature 'add a bookmark' do
  scenario 'it shows the new bookmark' do
    visit ('/')
    click_on "Add a bookmark"
    fill_in 'URL', with: "https://stackoverflow.com"
    click_on 'Submit'
    expect(page).to have_content "https://stackoverflow.com"
  end
end