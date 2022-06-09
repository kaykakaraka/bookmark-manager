def truncate_table
  controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
  controller.exec('TRUNCATE TABLE bookmarks;')
end
def add_makers_url
  controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
  controller.exec("INSERT INTO bookmarks(id, url) VALUES(1, 'http://www.makersacademy.com/');")
end
def add_destroyallsoftware_url
  controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
  controller.exec("INSERT INTO bookmarks(id, url) VALUES(2, 'http://www.destroyallsoftware.com');")
end
def add_google_url
  controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
  controller.exec("INSERT INTO bookmarks(id, url) VALUES(3, 'http://www.google.com/');")
end