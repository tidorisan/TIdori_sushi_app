class Coupon < ApplicationRecord

	belongs_to :store, optional: true

	attachment :image
end
