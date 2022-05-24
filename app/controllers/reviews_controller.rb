class ReviewsController < ApplicationController


  def index
    @reviews = Reviews.all
  end

  def new
    @review = Review.new
  end

  def create
    @toilet = Toilet.find(params[:toilet_id])
    @review = Review.new(review_params)
    @review.toilet = @toilet
    if @review.save
      redirect_to toilet_path(@toilet)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @review.update(review_params)
    @review.toilet = @toilet
    redirect_to toilet_path(@toilet)
  end

  def destroy
    @review.destroy
    redirect_to toilet_path(@review.toilet)
  end

  private
  def review_params
    params.require(:review).permit(:description, :rating)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
