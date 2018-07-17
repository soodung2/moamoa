class CommentsController < ApplicationController
  def create
    comment=Comment.new
    comment.content=params[:comment][:content]
    comment.cloth_id=params[:comment][:cloth_id]
    comment.save
    redirect_to :back
  end

  def destroy
    @destroy_comment= Comment.find(params[:id])
    @destroy_comment.destroy
    redirect_to :back
  end
end
