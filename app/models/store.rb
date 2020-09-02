class Store < ApplicationRecord

	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	enum no_smoking: { 完全喫煙可: 1, 分煙: 2, 全面禁煙: 3 }

	enum reservation: { 予約可: 1, 予約不可: 2, 完全予約制: 3 }

	enum store_genre: { 寿司: 1, 回転寿司: 2, 立ち食い寿司: 3 }

	belongs_to :user, optional: true

	belongs_to :store_genre

	has_many :favorite_stores, dependent: :destroy

	has_many :coupons, dependent: :destroy

	has_many :store_menus, dependent: :destroy

	has_many :store_buzzs, dependent: :destroy

	attachment :image

	def favorited_by?(user)
		favorite_stores.where(user_id: user.id).exists?
	end
end
