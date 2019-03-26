class Brain::UsersController < ApplicationController

  before_action :set_user, only: [:show]

  def show #shows the user's homepage/feed

    @influencer_hash = @user.find_influencers
    #calls find influencers method within user class
  end

  

  # def '/discover' #goes to discovery page.
  #   #lists users with categories which were selected by user during account creation
  # end


  private

  def set_user

    @user = User.find(params[:id])
  end

end
