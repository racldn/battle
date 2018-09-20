require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
    get '/' do
      "Testing infrastructure working!"
       erb(:form)
    end

    post '/names' do
      $game = Game.new(params[:player_1_name], params[:player_2_name])
      redirect '/play'
    end

    get '/play' do
      @game = $game
      erb :play
    end

    get '/attacked' do
      $game.attack($game.second)
      @game = $game
      erb(:attacked)
    end

    run! if app_file == $0
end
