class StoreGenre < ApplicationRecord

	has_many :stores, dependent: :destroy
end
