class GenresController < ApplicationController

  get '/genres' do
    @genres = genre.all
    erb :"genres/index"
  end

end
