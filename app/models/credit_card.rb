class CreditCard < ApplicationRecord
	has_many :store_credit_cards, dependent: :destroy
	has_many :s_credit_cards, through: :store_credit_card, source: :store
end
