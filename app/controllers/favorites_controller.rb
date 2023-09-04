class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @nook = Nook.find(params[:nook_id])
    current_user.favorite_nooks << @nook unless current_user.favorite_nooks.include?(@nook)
    redirect_to @nook, notice: 'Nook added to favorites'
  end

  # def destroy
  #   @nook = Nook.find(params[:book_id])
  #   current_user.favorite_nooks.delete(@nook)
  #   redirect_to @nook, notice: 'Nook removed from favorites'
  # end
end
