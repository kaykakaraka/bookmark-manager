require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/add' do
    erb(:add)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    @bookmarks << params[:URL]
    erb(:bookmarks)
  end
  
  run! if app_file == $0
end
