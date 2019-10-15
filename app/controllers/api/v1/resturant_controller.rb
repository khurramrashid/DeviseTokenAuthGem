class Api::V1::ResturantController < ApplicationController

  def index
    @resturant = Resturant.all
  end

  def create
    @resturant = Resturant.new(resturant_params)
    if @resturant.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @resturant = Resturant.find(params[:id])
  end

  def edit
    @resturant = Resturant.find(params[:id])
  end

  def update
    @resturant = Resturant.find(params[:id])
    @resturant.update(resturant_params)
  end


  def resturant_params
    params.require(:resturant).permit(:name, :location, :address, :contact, :price_range, :cuisine, :opening_hours, :payment_option, :dress_code, :discription, :average_rating)
  end

end
