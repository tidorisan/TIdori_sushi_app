class EBill < ApplicationRecord
	has_many :store_e_bills, dependent: :destroy
	has_many :s_e_bills, through: :store_e_bills, source: :store
end
