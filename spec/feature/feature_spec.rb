require_relative '../../lib/app.rb'

feature 'should show a list of bookmarks' do
  scenario 'expect to display bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("www.reddit.com")
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.500px.com")
  end  
end