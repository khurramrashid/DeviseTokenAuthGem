class ProfileController < ApplicationController

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
    render json: @profile = Profile.find(params[:id])
  end

  def profile_params
    params.fetch(:profile).permit(:name, :phno, :homeaddress, :city, :country, :image, :imagecount, :reservation, :reviews, :pointsearned)
  end

end
