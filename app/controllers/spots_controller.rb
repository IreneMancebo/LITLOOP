class SpotsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
  end
end
