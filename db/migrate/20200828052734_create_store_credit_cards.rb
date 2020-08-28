class CreateStoreCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :store_credit_cards do |t|
      t.integer :store_id, null: false, default: 0
      t.integer :credit_card_id, null: false, default: 0

      t.timestamps
    end
  end
end
