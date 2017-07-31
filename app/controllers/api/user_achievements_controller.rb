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

end