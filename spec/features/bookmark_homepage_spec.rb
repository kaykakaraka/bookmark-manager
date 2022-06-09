feature "home page" do
  scenario "shows the title bookmark manager" do
    visit('/bookmarks')
    expect(page).to have_content 'Bookmark Manager'
  end
end
