class FavoriteStore < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :store, optional: true
end
