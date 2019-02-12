class SongsController < ApplicationController

enable :sessions
use Rack::Flash

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/new" do
     erb :"songs/new"
   end

   post "/songs" do
     binding.pry

    @artist = Artist.find_by(name: params["Artist Name"])
    if !!@artist
      @song = Song.create(name: params[:Name])
      @song.artist = @artist
      # @genre = Genre.find_by(name: params[:genres])
      # @song.genres << @genre
    else
      @artist = Artist.create(name: params["Artist Name"])
      @song = Song.create(name: params[:Name])
      @song.artist = @artist
      # @genre = Genre.find_by(name: params[:genres])
      # @song.genres << @genre
    end
  end


  get "/songs/:slug" do
   @song = Song.find {|song| song.slug == params[:slug]}
   erb :"songs/show"
 end


end
