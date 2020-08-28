class Equipment < ApplicationRecord
	belongs_to :store_equipment, optional: true
end
