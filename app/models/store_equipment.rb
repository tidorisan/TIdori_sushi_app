class StoreEquipment < ApplicationRecord
	belongs_to :store_equipment, optional: true
	belongs_to :equipment, optional: true
end
