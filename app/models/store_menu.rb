class StoreMenu < ApplicationRecord

	belongs_to :store, optional: true

	belongs_to :menu_genre, optional: true
end
