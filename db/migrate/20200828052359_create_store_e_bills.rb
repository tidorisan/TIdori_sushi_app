class CreateStoreEBills < ActiveRecord::Migration[5.2]
  def change
    create_table :store_e_bills do |t|
      t.integer :store_id, null: false, default: 0
      t.integer :e_bill_id, null: false, default: 0

      t.timestamps
    end
  end
end
