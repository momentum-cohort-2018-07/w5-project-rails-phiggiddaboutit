class CommentsController < ApplicationController
  before_action :find_commentable
  def new
    @comment = Comment.new
  end

  def create
 
      @comment= @commentable.comments.new comment_params
      if @comment.save then
        redirect_to @commentable, notice: "You have commented!"
      else
        redirect_to @commentable, notice: "Woops! Something went wrong!"
      end
  end
  def destroy
  end

  def show
    
    find_comment_parent
    redirect_to "/stories/#{@commentable.commentable_id}"
  end

  def edit
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

  def find_comment_parent
    @commentable = Comment.find_by_id(params[:id])
  end
  def find_commentable
    
    @commentable= Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Story.find_by_id(params[:story_id]) if params[:story_id]
  end
end
