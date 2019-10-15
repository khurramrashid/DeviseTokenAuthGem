class Api::V1::ReservationController < ApplicationController

  def index
    @reservation = Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
  end


  def reservation_params
    params.require(:reservation).permit(:occassion, :total_person, :special_request, :user_contact, :note, :user_id, :resturant_id, :time_slot_id)
  end


end
