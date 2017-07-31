class Api::AvatarsController < Api::ApiController
  def index
    @avatars = Avatar.all
    render status: 200, json: {
      message: "successfully rendered avatars",
      avatars: @avatars
    }.to_json
  end

  def show
    @avatar = Avatar.find(params[:id])
    @completed_achievements = @avatar.user.completed_achievements.map do |ach|
      ach.achievement
    end

    #giving the avatar a image depending on the avatar xp
    if @avatar.xp >= 10
      @avatar.img = './lvl2.jpg'
    elsif @avatar.xp >= 50
      @avatar.img = './lvl3.jpg'
    else
      @avatar.img = './lvl1.jpg'
    end
      
    render status: 200, json: {
      message: "Successfully got #{@avatar.name}'s' avatar",
      avatar: @avatar,
      completed_achievements: @completed_achievements
    }.to_json
  end

  def create
    @avatar = Avatar.create(avatar_params)
    if @avatar.save
      render status: 200, json: {
        message: "#{@avatar.name}'s avatar successfully created",
        avatar: @avatar
      }.to_json
    else
      render status: 422, json: {
        message: "Avatar creation failed",
        avatar: @avatar.errors
      }
    end
  end

  def update
    @avatar = Avatar.find(params[:id])

    # reset avatar xp to 0 and add points array container
    @avatar.xp = 0
    @points_array ||= []
    
    #loop through avatars completed achievements and grab the points
    @avatar.user.completed_achievements.map do |ach|
      @points_array << ach.achievement.points
    end

    #sum the points for the avatar
    @av_points = @points_array.inject(:+)
    @avatar.xp += @av_points

    if @avatar.update(avatar_params)
      render status: 200, json: {
        message: "successfully updated #{@avatar.name}'s avatar",
        avatar: @avatar,
        completed: @completed_achievements
      }.to_json
    else
      render status: 422, json: {
        message: "avatar failed to update",
        avatar: @avatar.errors
      }.to_json
    end
  end

  private

  def avatar_params
    params.permit(:user_id, :name, :img, :xp)
  end
end