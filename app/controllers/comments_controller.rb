class CommentsController < ApplicationController
  before_action :find_commentable
  def new
    @comment = Comment.new
  end

  def create
      @comment= @commentable.comments.new comment_params
      if @comment.save then
        redirect_to story_path(1) 
      else
        redirect_to story_path(1)
      end
  end
  def destroy
  end

  def show
    
  end

  def edit
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

  def find_commentable
    @commentable= Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Story.find_by_id(params[:story_id]) if params[:story_id]
  end
end
