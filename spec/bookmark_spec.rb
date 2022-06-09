require 'bookmark'

RSpec.describe Bookmark do
  describe '.all' do
    it "returns the bookmarks from the database" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com/')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com/')
    end
  end

  describe '.create' do
    it 'adds a bookmark to the database' do
      Bookmark.create('http://stackoverflow.com')
      expect(Bookmark.all).to include('http://stackoverflow.com')
      expect(Bookmark.all).to include('http://www.makersacademy.com/')
    end
  end
end
