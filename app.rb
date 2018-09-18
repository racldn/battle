require 'sinatra/base'


class Battle < Sinatra::Base
    get '/battle' do
       erb(:form)
    end

    post '/names' do
      @name1 = params[:player1]
      @name2 = params[:player2]
      erb :play
    end

    get '/' do
        "Testing infrastructure working!"
    end

    run! if app_file == $0
end
