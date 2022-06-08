require 'pg'

class Bookmark
  def self.all
      controller = PG.connect :dbname => "bookmark_manager"
      rs = controller.exec "SELECT * FROM bookmarks;"
      rs.map { |row| row['url'] }
  end
end
