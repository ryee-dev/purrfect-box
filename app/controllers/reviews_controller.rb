class ReviewsController < ApplicationController
  def new
    @box = Box.find(params[:box_id])
    @review = @box.reviews.new
  end

  def create
    @box = Box.find(params[:box_id])
    @review = @box.review.new(review_params)
    if @review.save
      redirect_to box_path(@review.box)
    else
      redirect_to box_path(params[:box_id])
    end
  end

  private
    def review_params
      params.require(:review).permit(:box_id, :name, :review, :rating)
    end
end