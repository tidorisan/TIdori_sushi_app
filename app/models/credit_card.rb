class CreditCard < ApplicationRecord
	belongs_to :store_credit_card, optional: true
end
