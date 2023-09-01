class NooksController < ApplicationController
  skip_before_action :authenticate_user!
  # before_action :set_nook

  def index
    @nooks = Nook.all
    @markers = @nooks.map do |nook|
      {
        lat: nook.latitude,
        lng: nook.longitude,
        preview_card_html: render_to_string(partial: "preview_card", locals: {nook: nook}),
        nook_id: nook.id,
        nook_image_src: nook.image,
        nook_name: nook.name
      }
    end
  end

  def show
    @nook = Nook.find(params[:id])
    @marker = [{
      lat: @nook.latitude,
      lng: @nook.longitude
    }]
  end

  def new
  end
end

# private

# def set_nook
#   @nook = Nook.find(params[:id])
# end
