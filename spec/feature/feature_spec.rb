require_relative '../../lib/app.rb'

feature 'should show a list of bookmarks' do
  scenario 'expect to display bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('Bookmarks')
  end  
end