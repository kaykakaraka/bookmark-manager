require 'bookmark'

RSpec.describe Bookmark do
  describe '.all' do
    it "returns the bookmarks from the database" do
      truncate_table
      add_makers_url
      add_destroyallsoftware_url
      add_google_url
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com/')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com/')
    end
  end
end
