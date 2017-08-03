class Api::CommentsController < Api::ApiController

  def index

  end

  def new

  end

  def create
    @comment = Comment.new(body: params[:body], sender_id: 1, receiver_id: params[:receiver])
    if @comment.save
      redirect_to "https://level-up-rails-front-end.herokuapp.com/users/#{params[:receiver]}"
    else
      "nooooooo"
    end
  end

end
