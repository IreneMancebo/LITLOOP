class PagesController < ApplicationController

  def feed
  # Fetch the most recently added Nooks (sorted by created_at)
  @recently_added_nooks = Nook.order(created_at: :desc).limit(10)

  # Fetch the most recently added Footnotes (sorted by created_at)
  @recently_added_footnotes = Footnote.order(created_at: :desc).limit(10)

# need to add the images


  end

  def dashboard
    @favorite_nooks = current_user.favorite_nooks
    @my_footnotes = Footnote.joins(:nook).where(nooks: { user_id: current_user.id })
    .order("footnotes.created_at DESC")
    .limit(10)
  end

end



# @my_footnotes = []
# Nook.where(user: current_user).each do |nook|
#   @my_footnotes << nook.footnotes
# end
# @my_footnotes.flatten.sort_by { |footnote| footnote.created_at}