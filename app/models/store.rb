class Store < ApplicationRecord

	enum no_smoking: { 完全喫煙可: 1, 分煙: 2, 全面禁煙: 3 }

	enum reservation: { 予約可: 1, 予約不可: 2, 完全予約制: 3 }

	enum store_genre: { 寿司: 1, 回転寿司: 2, 立ち食い寿司: 3 }

	belongs_to :user, optional: true

	has_many :favorites

	has_many :coupons, dependent: :destroy

	has_many :store_menus, dependent: :destroy

	has_many :store_buzzs, dependent: :destroy

	has_many :store_credit_cards
	has_many :cc_stores, through: :store_credit_cards, source: :credit_card
	accepts_nested_attributes_for :store_credit_cards, allow_destroy: true

	has_many :store_equipments
	has_many :e_stores, through: :store_equipments, source: :equipment
	accepts_nested_attributes_for :store_equipments, allow_destroy: true

	has_many :store_e_bills
	has_many :eb_stores, through: :store_e_bills, source: :e_bill
	accepts_nested_attributes_for :store_e_bills, allow_destroy: true

	attachment :image
end
