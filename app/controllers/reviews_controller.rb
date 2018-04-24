class ReviewsController < ApplicationController
  def new
    @box = Box.find(params[:box_id])
    @review = @product.reviews.new
  end

  def create
    @box = Box.find(params[:box_id])
    @review = @box.review.new(review_params)
    if @review.save
      redirect_do box_path(@review.box)
    else
      render :show
    end
  end

  private
    def review_params
      params.require(:review).permit(:name, :review, :rating)
    end
end