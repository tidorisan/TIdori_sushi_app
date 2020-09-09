class FavoriteStore < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :store, optional: true

  validates :user_id, uniqueness: { scope: :store_id }
end
