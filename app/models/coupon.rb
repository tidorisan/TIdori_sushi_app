class Coupon < ApplicationRecord

	belongs_to :store, optional: true
end
