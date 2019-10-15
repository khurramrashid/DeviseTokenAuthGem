class Api::V1::ImageController < ApplicationController

  def index
    @image = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(image_params)
  end


  def image_params
    params.require(:image).permit(:image, :resturant_id)
  end

end
