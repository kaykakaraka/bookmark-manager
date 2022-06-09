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

  describe '.all' do
    it 'returns a single url from the database' do
      truncate_table
      add_makers_url
      expect(Bookmark.all).to eq [{'url' => 'http://www.makersacademy.com/', 'title' => 'Makers Academy'}]
    end

    it 'returns a different url from the database' do
      truncate_table
      add_google_url
      expect(Bookmark.all).to eq [{'url' => 'http://www.google.com/', 'title' => 'Google'}]
    end

    it 'returns an array of two urls and titles' do
      truncate_table
      add_makers_url
      add_google_url
      expect(Bookmark.all).to eq [{'url' => 'http://www.makersacademy.com/', 'title' => 'Makers Academy'}, 
                                  {'url' => 'http://www.google.com/', 'title' => 'Google'}]
    end
  end
end
