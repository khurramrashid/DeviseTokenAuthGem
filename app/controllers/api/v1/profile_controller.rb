class Api::V1::ProfileController < ApplicationController

  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      render json: @profile
    else
      render json: { massage: 'Missing Values or already exists' }
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.fetch(:profile).permit(:name, :phno, :home_address, :city, :country, :image, :image_count, :reservation, :reviews, :points_earned)
  end

end
