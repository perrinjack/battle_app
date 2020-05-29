require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end
end
