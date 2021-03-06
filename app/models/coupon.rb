class Coupon < ApplicationRecord
  belongs_to :store, optional: true

  attachment :image

  validates :reason, presence: true,
                     length: { maximum: 200 }
  validates :detail, presence: true,
                     length: { maximum: 200 }
  validates :target, presence: true,
                     length: { maximum: 200 }
  validates :writing, length: { maximum: 200 }
  validates :expiration_date, presence: true,
                              numericality: true
end
