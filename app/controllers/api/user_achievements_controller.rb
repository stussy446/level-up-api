class Api::UserAchievementsController < Api::ApiController

  def index 
    @user = User.find(1)
    render json: @user
  end

end