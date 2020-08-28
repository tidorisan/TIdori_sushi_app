class Store < ApplicationRecord

	enum no_smoking: { 完全喫煙可: 1, 分煙: 2, 全面禁煙: 3 }

	enum reservation: { 予約可: 1, 予約不可: 2, 完全予約制: 3 }

	enum store_genre: { 寿司: 1, 回転寿司: 2, 立ち食い寿司: 3 }

	has_many :store_credit_cards
	has_many :use_credit_cards, through: :store_credit_cards, source: :credit_card

	has_many :store_equipments
	has_many :use_store_equipments, through: :store_equipments, source: :equipment

	has_many :store_e_bills
	has_many :use_store_e_bills, through: :store_e_bills, source: :e_bill
end
