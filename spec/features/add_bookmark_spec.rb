feature 'add a bookmark' do
  scenario 'it shows the new bookmark' do
    visit ('/bookmarks')
    click_on "Add a bookmark"
    fill_in 'URL', with: "https://stackoverflow.com"
    fill_in 'title', with: "Stack Overflow"
    click_on 'Submit'
    expect(page).to have_content "Stack Overflow"
  end
end