class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to post_url(@comment.post_id)
    else
      flash.now[:errors] = @comment.errors.full_messages
      render :new
    end
  end

  def show 
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id, :parent_comment_id)
  end
end
