class NooksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @nooks = Nook.all
  end

  def show
    @nook = Nook.find(params[:id])
    @user = User.find(params[:id])
    # Need @user to access username in the show page
  end

  def new
  end
end
