class PagesController < ApplicationController

  def feed

  end

  def dashboard
    @favorite_nooks = current_user.favorite_nooks
  end

end
