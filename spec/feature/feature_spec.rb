require_relative '../../lib/app.rb'

feature 'should show a list of bookmarks' do
  scenario 'expect to display bookmarks' do
    visit '/bookmarks'
    
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end  
end
