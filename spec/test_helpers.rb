def truncate_table
  controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
  controller.exec('TRUNCATE TABLE bookmarks;')
end
def add_makers_url
  Bookmark.create('http://www.makersacademy.com/', 'Makers Academy')
end
def add_destroyallsoftware_url
  Bookmark.create('http://www.destroyallsoftware.com', 'Destroy All Software')
end
def add_google_url
  Bookmark.create('http://www.google.com/', 'Google')
end