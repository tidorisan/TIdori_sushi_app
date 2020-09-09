class StoreGenre < ApplicationRecord
  has_many :stores, dependent: :destroy

  validates :genre_name, presence: true

end
