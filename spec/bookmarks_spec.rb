require 'bookmarks'
describe Bookmarks do
  
  describe ".all" do
    it 'Should return all bookmarks' do
      expect(Bookmarks.all).to eq([
        "www.reddit.com",
        "www.google.com",
        "www.500px.com"                     
      ])
    end
  end
end
