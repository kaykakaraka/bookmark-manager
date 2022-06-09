require 'bookmark'

RSpec.describe Bookmark do
  describe '.url' do
    it "returns the bookmarks from the database" do
      bookmarks = Bookmark.url
      expect(bookmarks).to include('http://www.makersacademy.com/')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com/')
    end
  end

  describe '.create' do
    it 'adds a bookmark to the database' do
      Bookmark.create('http://stackoverflow.com', 'Stack Overflow')
      expect(Bookmark.url).to include('http://stackoverflow.com')
      expect(Bookmark.url).to include('http://www.makersacademy.com/')
    end
  end

  describe '.title' do
    it 'returns the titles from the database' do
      titles = Bookmark.title
      expect(titles).to include('Makers Academy')
      expect(titles).to include('Destroy All Software')
      expect(titles).to include('Google')
    end
  end
end
