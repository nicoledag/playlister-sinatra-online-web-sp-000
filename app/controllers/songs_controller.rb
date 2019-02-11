class SongsController < ApplicationController

enable :sessions
use Rack::Flash

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/:slug' do


  end


end
