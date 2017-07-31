class Api::UsersController < Api::ApiController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(1)
    # @user_achievements = @user.picked_achievements
    # @completed_achievements = @user.completed_achievements
    render status: 200, json: {
      user: @user,
      user_achievements: @user.achievements
    }.to_json
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render status: 200, json:{
        message: "Successfully created new user",
        user: @user
      }.to_json
    else
      render status: 422, json: {
        message: "User creation failed",
        user: @user.errors
      }.json
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end