class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @profile = User.find(params[:id])
  end
end
