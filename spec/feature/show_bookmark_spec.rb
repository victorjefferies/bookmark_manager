require_relative '../../lib/app.rb'

feature 'should show a list of bookmarks' do

  scenario 'expect to display bookmarks' do
    conn = DBManagement.set_up_database
    conn.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com'), ('http://www.destroyallsoftware.com'), ('http://www.google.com')")

    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end
end