class Api::V1::TimeSlotController < ApplicationController

  def index
    @timeslot = TimeSlot.all
  end

  def create
    @timeslot = TimeSlot.new(timeslot_params)
    if @timeslot.save
      render :create
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @timeslot = TimeSlot.find(params[:id])
  end

  def edit
    @timeslot = TimeSlot.find(params[:id])
  end

  def update
    @timeslot = TimeSlot.find(params[:id])
    @timeslot.update(timeslot_params)
  end


  def timeslot_params
    params.require(:timeslot).permit(:slot_available, :resturant_id)
  end

end
