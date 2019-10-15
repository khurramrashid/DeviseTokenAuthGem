class Api::V1::ReviewController < ApplicationController

  def index
    @review = Review.all
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end


  def review_params
    params.require(:review).permit(:user_name, :massage, :rating_id, :resturant_id)
  end


end
