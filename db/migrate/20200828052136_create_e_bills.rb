class CreateEBills < ActiveRecord::Migration[5.2]
  def change
    create_table :e_bills do |t|
      t.integer :store_e_bill_id, null: false
      t.string :genre_name, null: false, default: ""
      t.boolean :display_status, null: false, default: true

      t.timestamps
    end
  end
end
