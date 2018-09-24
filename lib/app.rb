require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/bookmarks' do
    @bookmarks = [
      "www.reddit.com",
      "www.google.com",
      "www.500px.com"                     
    ]
    erb(:bookmarks)
  end

  run! if app_file == $0
end
