class NooksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @nooks = Nook.all
    @markers = @nooks.map do |nook|
      {
        lat: nook.latitude,
        lng: nook.longitude,
        card_preview_html: render_to_string(partial: "card_preview", locals: {nook: nook})
      }
    end
  end

  def show
    @nook = Nook.find(params[:id])
  end

  def new
  end
end
