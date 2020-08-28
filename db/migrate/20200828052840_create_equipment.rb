class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.integer :store_equipment_id, null: false, default: 0
      t.string :genre_name, null: false, default: ""
      t.boolean :display_status, null: false, default: true

      t.timestamps
    end
  end
end
