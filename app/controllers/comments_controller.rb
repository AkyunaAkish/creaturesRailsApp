class CommentsController < ApplicationController
  # def index
  #   @creature = Creature.find(params[:creature_id])
  #   redirect_to(@creature)
  # end

  def create
    @creature = Creature.find(params[:creature_id])
    @comment = @creature.comments.create(comment_params)

    # if !@comment.errors.messages.empty?
    #   @creature.errors.add(:body, @comment.errors.messages[:body])
    #   @creature.errors.add(:commenter, @comment.errors.messages[:commenter])
    #   render 'creatures/show'
    # else
      redirect_to creature_path(@creature)
    # end
  end

  def edit
    @comment = Comment.find(params[:id])
    @creature = Creature.find(params[:creature_id])
  end


  def update
    @comment = Comment.find(params[:id])
    @creature = Creature.find(params[:creature_id])
    if
      @comment.update(comment_params)
      redirect_to @creature
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @creature = Creature.find(params[:creature_id])
    redirect_to @creature
  end


  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
