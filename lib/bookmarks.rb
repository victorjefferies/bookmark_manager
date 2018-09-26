require 'pg'
class Bookmarks
  def self.all
    if (ENV['RACK_ENV']) 
      # Output a table of current connections to the DB
      conn = PG.connect( dbname: ENV['DATABASE'])
    else 
      conn = PG.connect( dbname: 'bookmark_manager' )
    end 
    result  = conn.exec( "SELECT url FROM bookmarks" ) 
    result.map do |row|
      row['url']
    end
  end
end
