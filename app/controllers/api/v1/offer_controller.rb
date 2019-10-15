class Api::V1::OfferController < ApplicationController

  def index
    @offer = Offer.all
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
  end


  def offer_params
    params.require(:offer).permit(:points_giving, :deals_giving, :resturant_id, :time_slot_id)
  end


end
