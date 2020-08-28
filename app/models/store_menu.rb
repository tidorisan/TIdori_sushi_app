class StoreMenu < ApplicationRecord

	belongs_to :store, optional: true

	has_many :menu_genres, dependent: :destroy
end
