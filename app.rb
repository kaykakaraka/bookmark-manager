require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.url
    @titles = Bookmark.title
    erb(:'bookmarks/index')
  end

  get '/bookmarks/add' do
    erb(:'bookmarks/add')
  end

  post '/bookmarks/add' do
    Bookmark.create(params[:URL], params[:title])
    redirect ('/bookmarks')
  end
  
  run! if app_file == $0
end
