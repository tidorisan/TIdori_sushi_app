class CreateStoreEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :store_equipments do |t|
      t.integer :store_id, null: false
      t.integer :equipment_id, null: false

      t.timestamps
    end
  end
end
