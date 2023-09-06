class FootnotesController < ApplicationController
  before_action :set_nook

  def show
    @nook = Nook.find(params[:id])
    @footnotes = @nook.footnotes.joins(:nook).where(nooks: { user: current_user }).order(created_at: :desc)
  end

  def new
  end

  def create
    @footnote = Footnote.new(footnote_params)
    @footnote.user_id = current_user.id
    @footnote.nook_id = @nook
    if @footnote.save
      redirect_to nook_path(params[:nook_id])
    else
      render 'nooks/index', status: :unprocessable_entity
    end
  end
end

private

def footnote_params
  params.require(:footnote).permit(:text)
end

def set_nook
  @nook = params[:nook_id]
end
