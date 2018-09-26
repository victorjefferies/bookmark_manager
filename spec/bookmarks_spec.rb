require 'bookmarks'

describe Bookmarks do
  describe ".all" do
    it 'returns a list of bookmarks' do
      conn = DBManagement.set_up_database
      conn.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com')")
      expect(Bookmarks.all).to eq(["http://www.makersacademy.com"])
    end
  end
end