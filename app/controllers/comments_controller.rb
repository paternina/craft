class CommentsController < ApplicationController
  before_action :set_craft, only: [:create, :update, :destroy]
  before_action :set_comment, only: [:update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  
  def create
    @comment = @craft.comments.create(comment_params)
    @comment.user_id = current_user.id if current_user
    @comment.save
    
    redirect_to craft_path(@craft)
  end

  def update
    @comment.update(comment_params)
    redirect_to craft_path(@craft)
  end

  def destroy
    @comment.destroy
    redirect_to craft_path(@craft)
  end
  
  private
  
  def set_comment
    @comment = @craft.comments.find(params[:craft_id])
  end
  
  def set_craft
   @craft = Craft.find(params[:craft_id])
  end
    
  def comment_params
    params.require(:comment).permit(:response)
  end
end
