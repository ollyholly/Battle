require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

# set :session_secret, 'super secret'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/attack' do
    @game = Game.instance
    Attack.run(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = Game.instance
    erb :attack
  end

  post '/switch-turns' do
    @game = Game.instance
    @game.switch_turn
    redirect '/play'
  end

  get '/game-over' do
    @game = Game.instance
    erb :game_over
  end

  run! if app_file == $0
end
