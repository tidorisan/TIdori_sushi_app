class CreateStoreEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :store_equipments do |t|
      t.integer :store_id, null: false, default: 0
      t.integer :equipment_id, null: false, default: 0

      t.timestamps
    end
  end
end
