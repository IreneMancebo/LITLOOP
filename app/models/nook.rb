class Nook < ApplicationRecord
  belongs_to :user
  after_validation :geocode, if: :will_save_change_to_coordinates?
  has_many_attached :photos
  has_many :favorites
  has_many :favorited_by_users, through: :favorites, source: :user
  has_many :footnotes

  def coordinates
    "#{longitude}, #{latitude}"
  end
end
