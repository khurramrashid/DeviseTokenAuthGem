class ProfileController < ApplicationController

  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      render json: @profile
    else
      render json: {massage: 'Missing Values or already exists'}
    end
  end

  def profile_params
    params.fetch(:profile).permit(:name, :phno, :address)
  end

end
