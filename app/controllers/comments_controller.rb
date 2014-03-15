class CommentsController < ApplicationController

  def create
    @salon = Salon.find(params[:salon_id])
    @comment = @salon.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to salon_path(@salon)
  end
end
