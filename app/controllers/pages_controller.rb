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
  end
end
