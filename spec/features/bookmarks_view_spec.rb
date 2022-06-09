feature "bookmarks page" do
  scenario "it lists bookmarks on the page" do
    truncate_table
    add_makers_url
    add_destroyallsoftware_url
    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com/'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end
