require 'pg'

class Bookmark
  def self.all
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['url'] }
  end
end
