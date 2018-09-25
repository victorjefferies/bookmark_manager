require 'pg'
class Bookmarks
  def self.all
      # Output a table of current connections to the DB
      conn = PG.connect( dbname: 'bookmark_manager' )
      result  = conn.exec( "SELECT url FROM bookmarks" ) 
      result.map do |row|
      row['url']
    end
  end
end
