class Api::UsersController < Api::ApiController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    @avatar = @user.avatar
    render json: {
      user: @user, 
      avatar: @avatar
    }.as_json
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