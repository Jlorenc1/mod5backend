class GamesController < ApplicationController
  # before_action :authorized
  
    def index 
        games = Game.order(score: :desc)
        render json: games
    end
        
    def create
      # byebug
      game = Game.create(games_params)
      render json: game
    end
    
    private 
  
    def games_params
        params.require(:game).permit(:user_id, :score)
    end
end

