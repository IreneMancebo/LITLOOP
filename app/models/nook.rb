class Nook < ApplicationRecord
  belongs_to :user
  after_validation :geocode, if: :will_save_change_to_coordinates?
  has_many_attached :photos
  has_many :favorites
end
