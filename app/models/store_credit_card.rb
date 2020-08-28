class StoreCreditCard < ApplicationRecord
	belongs_to :store
	belongs_to :credit_card
end
