class Favorite < ApplicationRecord
  belongs_to :nook
  belongs_to :user
end
