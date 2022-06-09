require 'pg'

class Bookmark
  def self.url
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['url'] }
  end

  def self.create(url, title)
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    controller.exec "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}');"
  end

  def self.title
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['title'] }
  end
end
