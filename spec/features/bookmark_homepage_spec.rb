feature "home page" do
  scenario "shows the title bookmark manager" do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
