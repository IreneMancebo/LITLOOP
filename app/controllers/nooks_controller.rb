class NooksController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  # before_action :set_nook
  def index
    if params[:search].present?
      filters = params[:search].dig(:filter).drop(1)
      search_hash = {}
      filters.map { |filter| search_hash[filter] = true }
      nook_subquery = "name ILIKE :query OR description ILIKE :query"
      # footnotes_subquery = "text ILIKE :query"
      @nooks = Nook.where(nook_subquery, query: "%#{params.dig(:search, :query)}%")
      @nooks = @nooks.where(search_hash)
      @markers = @nooks.map do |nook|
        {
          lat: nook.latitude,
          lng: nook.longitude,
          preview_card_html: render_to_string(partial: "preview_card", locals: {nook: nook}),
          nook_id: nook.id,
          nook_image_src: nook.photos.first.key,
          nook_name: nook.name
        }
      end
    else
      @nooks = Nook.all
      @markers = @nooks.map do |nook|
        {
          lat: nook.latitude,
          lng: nook.longitude,
          preview_card_html: render_to_string(partial: "preview_card", locals: {nook: nook}),
          nook_id: nook.id,
          nook_image_src:  nook.photos.first.key,
          nook_name: nook.name
        }
      end
    end
  end

  def show
    @nook = Nook.find(params[:id])
    @footnote = Footnote.new
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

  def edit
    @nook = Nook.find(params[:id])
  end

  def update
    @nook = Nook.find(params[:id].to_i)
    @nook.update(nook_params)
    redirect_to lending_path(@nook)
  end

  def destroy
    @nook = Nook.find(params[:id])
    @nook.destroy
    redirect_to lending_path, status: :see_other
    flash.notice = 'Your NookBook was successfully deleted.'
  end

  # private

  # def set_nook
  #   @nook = Nook.find(params[:id])
  # end

  # def nook_params
  #   params.require(:nook).permit(:name, :description, photos: [])
  # end
end
