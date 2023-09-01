class NooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @nooks = Nook.all
    @markers = @nooks.map do |nook|
      {
        lat: nook.latitude,
        lng: nook.longitude,
        preview_card_html: render_to_string(partial: "preview_card", locals: {nook: nook})
      }
    end
  end

  def show
    @nook = Nook.find(params[:id])
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

end

private

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