require 'sinatra/base'
require './lib/player'

# set :session_secret, 'super secret'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end
