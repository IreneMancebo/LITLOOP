class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @nook = Nook.find(params[:nook_id])
    @favorite = Favorite.new(user_id: current_user.id, nook_id: @nook.id)
    @favorite.save!
  end

  # def destroy
  #   @nook = Nook.find(params[:book_id])
  #   current_user.favorite_nooks.delete(@nook)
  #   redirect_to @nook, notice: 'Nook removed from favorites'
  # end
end
