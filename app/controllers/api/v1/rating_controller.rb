class Api::V1::RatingController < ApplicationController

  def index
    @rating = Rating.all
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update(rating_params)
  end


  def rating_params
    params.require(:rating).permit(:food, :service, :ambiance, :noise, :overall_rating, :average_rating, :resturant_id)
  end


end
