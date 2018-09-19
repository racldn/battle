require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
    get '/' do
      "Testing infrastructure working!"
       erb(:form)
    end

    post '/names' do
      $player_1_name = Player.new(params[:player_1_name])
      $player_2_name = Player.new(params[:player_2_name])
      redirect '/play'
    end

    get '/play' do
      @player_1_name = $player_1_name.name
      @player_2_name = $player_2_name.name
      erb :play
    end

    get '/attacked' do
      @player_1_name = $player_1_name.name
      @player_2_name = $player_2_name.name
      erb(:attacked)
    end

    run! if app_file == $0
end
