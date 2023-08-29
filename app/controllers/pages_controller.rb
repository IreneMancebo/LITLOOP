class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def feed

  end

  def dashboard

  end
end
