class NooksController < ApplicationController
  skip_before_action :authenticate_user!
  # before_action :set_nook

  def index
    @nooks = Nook.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR description ILIKE :query"
      @nooks = @nooks.where(sql_subquery, query: "%#{params[:query]}%")
    end
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
    @nook = Nook.new
  end

  def create
    @nook = Nook.new(nook_params)
    @nook.user = current_user
    raise
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
    flash.notice = 'Nook was successfully deleted.'
  end

end

private

def set_nook
  @nook = Nook.find(params[:id])
end

def nook_params
  params.require(:nook).permit(:name, :description)
end

# def edit
#   @book = Book.find(params[:id])
# end

# def update
#   @book = Book.find(params[:id].to_i)
#   @book.update(book_params)
#   redirect_to lending_path(@book)
# end

# def set_nook
#   @nook = Nook.find(params[:id])
# end
