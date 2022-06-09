require 'pg'

class Bookmark
  def self.all
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['url'] }
  end

  def create(url)
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    controller.exec "INSERT INTO bookmarks(url) VALUES('#{url}');"
  end
end
