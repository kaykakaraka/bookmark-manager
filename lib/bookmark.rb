require 'pg'

class Bookmark
  def self.url
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['url'] }
  end

  def self.create(url, title)
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    controller.exec_params( 
      "INSERT INTO bookmarks(url, title) VALUES($1, $2);", [url, title]
    )
  end

  def self.title
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    rs.map { |row| row['title'] }
  end

  def self.all
    controller = PG.connect :dbname => ENV['BOOKMARK_DATABASE']
    rs = controller.exec "SELECT * FROM bookmarks;"
    title_and_url = []
    rs.each do |row| 
      row_details = Hash["title" => row['title'], "url" => row['url']]
      title_and_url << row_details
    end
    title_and_url
  end
end
