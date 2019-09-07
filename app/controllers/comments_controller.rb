class CommentsController < ApplicationController
  before_action :set_image
  
  def create
    @comment = @image.comments.new(comment_params)
    if 
      @comment.save
      render @comment
    end
  end

  def destroy
         @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to
  end
  
  private
  def set_image
    @context = @contexts.find(params[:context_id])
    @image = @context.images.find(params[:image_id])
    
  end
  
  def comment_params
    params.require(:comment).permit(:autor, :body)
  end
end
