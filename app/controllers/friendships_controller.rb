class FriendshipsController < ApplicationController
    def index 
        friendships = Friendship.all
        render json: friendships
    end
        
    def create
      # byebug
      friendship = Friendship.create(friendship_params)
      render json: friendship
    end
    
    private 
  
    def games_params
        params.require(:friendship).permit(:user_id, :score)
    end
end