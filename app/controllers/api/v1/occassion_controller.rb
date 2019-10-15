class Api::V1::OccassionController < ApplicationController

  def index
    @occassion = Occassion.all
  end

  def create
    @occassion = Occassion.new(occassion_params)
    if @occassion.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @occassion = Occassion.find(params[:id])
  end

  def edit
    @occassion = Occassion.find(params[:id])
  end

  def update
    @occassion = Occassion.find(params[:id])
    @occassion.update(occassion_params)
  end


  def occassion_params
    params.require(:occassion).permit(:name, :reservation_id)
  end

end
