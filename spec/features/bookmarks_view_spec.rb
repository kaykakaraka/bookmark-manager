feature "bookmarks page" do
  scenario "it lists bookmark titles on the page" do
    visit('/bookmarks')
    expect(page).to have_content 'Makers Academy'
    expect(page).to have_content 'Destroy All Software'
  end

  scenario "page shows titles that link you to the URL" do
    visit('/bookmarks')
    expect(page).to have_link 'Makers Academy', href: 'http://www.makersacademy.com/'
    expect(page).to have_link 'Destroy All Software', href: 'http://www.destroyallsoftware.com'
  end
end
