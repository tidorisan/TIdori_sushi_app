class StoreBuzz < ApplicationRecord

	belongs_to :user, optional: true
	belongs_to :store, optional: true

	attachment :image

	validates :title, presence: true
	validates :detail, presence: true,
	 				   length: { minimum: 20 }
	validates :use_time, presence: true
	validates :pay_price, presence: true

end
