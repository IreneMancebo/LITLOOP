class NooksController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
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
    @footnote = Footnote.new
    @nook = Nook.find(params[:id])
    @footnotes = @nook.footnotes.order(created_at: :desc)
    @marker = [{
      lat: @nook.latitude,
      lng: @nook.longitude
    }]
  end

  def new
    @nook = Nook.new
  end

  def create
    @nook = Nook.new(nook_params)
    @nook.user = current_user
    if @nook.save
      redirect_to nook_path(@nook)
    else
      render "new", status: :unprocessable_entity
    end
  end

private

def nook_params
  params.require(:nook).permit(:name, :description)
end

def set_nook
  @nook = Nook.find(params[:id])
end

# def edit
#   @nook = Nook.find(params[:id])
# end

# def update
#   @nook = Nook.find(params[:id].to_i)
#   @nook.update(nook_params)
#   redirect_to nook_path(@nook)
# end
end
