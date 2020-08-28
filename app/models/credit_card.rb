class CreditCard < ApplicationRecord
	has_many :store_credit_cards
	has_many :user_credit_cards, :through :store_credit_card
end
