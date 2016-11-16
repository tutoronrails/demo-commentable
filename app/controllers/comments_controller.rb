class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to [@comment.commentable], notice: 'Comment created'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :message, :commentable_id, :commentable_type)
  end
end
