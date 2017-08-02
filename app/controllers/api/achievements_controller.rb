class Api::AchievementsController < Api::ApiController
  def index
    @achievements = Achievement.all
    render json: @achievements
  end

  def show 
    @user = User.find(1)
    @achievement = Achievement.find(params[:id])
    render json: {
      achievement: @achievement,
      user: @user
      }.to_json
  end

  def update
    @achievement = UserAchievement.find_by(achievement_id: params[:id])
    @achievement.completed = true
    
    if @achievement.update(achievement_params)
      render json: @achievement
    end
    # puts @achievement.id
    # puts @achievement.completed
    # puts @achievement.achievement_id
    # puts @achievement.user_id
  end

  def achievement_params
    params.permit(:achievement_id, :completed)
  end

end