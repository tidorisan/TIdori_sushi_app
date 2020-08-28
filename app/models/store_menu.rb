class StoreMenu < ApplicationRecord

	belongs_to :store

	has_many :menu_genres, dependent: :destroy
end
