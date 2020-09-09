class StoreMenu < ApplicationRecord
  belongs_to :store, optional: true

  belongs_to :menu_genre, optional: true

  attachment :image

  validates :name, presence: true
  validates :comment, presence: true,
                      length: { maximum: 200 }
  validates :tax_excluded_price, presence: true,
                                 numericality: true
  validates :menu_genre_id, presence: true
end
