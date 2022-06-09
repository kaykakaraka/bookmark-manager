require 'pg'

class Bookmark
  def self.url
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['url'] }
  end

  def self.create(url, title)
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    controller.exec "INSERT INTO bookmarks(url) VALUES('#{url}');"
  end

  def self.title
    ['Makers Academy', 'Destroy All Software', 'Google']
  end
end
