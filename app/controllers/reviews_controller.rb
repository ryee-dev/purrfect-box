class ReviewsController < ApplicationController
  def new
    @box = Box.find(params[:box_id])
    @review = @box.reviews.new
  end

  def create
    @box = Box.find(params[:box_id])
    @review = @box.reviews.new(review_params)
    if @review.save
      flash[:success] = "#{@review.name}, your review has been successfully added."
      redirect_to box_path(@review.box)
    else
      render 'boxes/show'
    end
  end

  private
    def review_params
      params.require(:review).permit(:box_id, :name, :review, :rating)
    end
end