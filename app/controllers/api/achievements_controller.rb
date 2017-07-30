class Api::AchievementsController < Api::ApiController
  def index
    @achievements = Achievement.all
    render json: @achievements
  end
end