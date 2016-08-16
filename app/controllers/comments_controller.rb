class CommentsController < ApplicationController
	
  before_action :set_comment, only: [:destroy]
  before_action :authorize_owner!, only: [:destroy]

  def create
  		@comment = @place.comments.new(comment_params)
      @comment.owner = current_owner
   	if @comment.save
      redirect_to @place, notice: "Comment was saved."
    else
      redirect_to @place, notice: "Comment couldn't saved."
    end
   end

   def destroy
    @comment.destroy
    redirect_to @place, notice: "Comment was deleted."
   end
  


private 

  def comment_params
    params.require(:comment).permit(:body)
  end


  def set_comment
    @comment = Comment.find(params[:id])
  end

  def authorize_owner!
    redirect_to @place, notice: "Not authorized" unless @comment.owner_id == current_owner.id
  end

end