require 'pg'

module DBManagement

  def self.truncate
    conn = PG.connect( dbname: 'bookmark_manager_test' )
    conn.exec('TRUNCATE bookmarks')
  end

  def self.set_up_database
    PG.connect( dbname: 'bookmark_manager_test' )
  end
end