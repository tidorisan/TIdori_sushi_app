class StoreCreditCard < ApplicationRecord
	belongs_to :store, optional: true
	belongs_to :credit_card, optional: true
end
