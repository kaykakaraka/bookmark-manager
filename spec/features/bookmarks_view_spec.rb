feature "bookmarks page" do
  scenario "it lists bookmarks on the page" do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com/'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end
