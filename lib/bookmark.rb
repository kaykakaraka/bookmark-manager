require 'pg'

class Bookmark
  def self.all
    begin
      controller = PG.connect :dbname => "bookmark_manager"
      rs = controller.exec "SELECT * FROM bookmarks;"
      bookmarks = []
      rs.each { |row| bookmarks << row['url'] }
      bookmarks
    end
  end
end
