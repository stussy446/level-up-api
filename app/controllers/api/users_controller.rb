class Api::UsersController < Api::ApiController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    @user_achievements = @user.picked_achievements
    render json: {
      user: @user, 
      achievements: @user_achievements
    }
  end
end