class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def feed

  end

  def dashboard
    @favorite_nooks = current_user.favorite_nooks
  end
end
