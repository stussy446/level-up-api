class Api::UserAchievementsController < Api::ApiController

  def index 
    @user = User.find(1)
    @user_achievements = @user.user_achievements.all
    @achievement_data = @user_achievements.map do |user_achievement|
      user_achievement.achievement
    end

    render json: {
     user: @user,
     user_achievements: @user_achievements,
     achievement_data: @achievement_data
    }.to_json
  end

  def update
    @userAchievement = UserAchievement.find(params[:id])
    @userAchievement.completed = 'true'
  end

  def create
    @user_achievement = UserAchievement.new(user_achievement_params)
    if @user_achievement.save
      # render status: 200, json: {
      #   message: "fuk yaa",
      #   user_achievement: @user_achievement
      # }.
      redirect_to "http://localhost:3000"
    else
      render status: 422, json: {
        message: 'fuk that',
        user_achievement: @user_achievement.errors
      }.to_json
    end
  end

  def user_achievement_params
    params.permit(:user_id, :achievement_id, :completed)
  end

  def find_user
    @user = User.find(params[:id])
  end
end