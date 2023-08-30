class NooksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @nooks = Nook.all
  end

  def show
    @nook = Nook.find(params[:id])
  end

  def new
  end
end
