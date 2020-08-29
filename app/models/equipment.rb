class Equipment < ApplicationRecord
	has_many :store_equipments, dependent: :destroy
	has_many :s_equipments, through: :store_equipments, source: :store
end
