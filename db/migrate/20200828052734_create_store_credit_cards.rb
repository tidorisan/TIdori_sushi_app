class CreateStoreCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :store_credit_cards do |t|
      t.integer :store_id, null: false
      t.integer :credit_card_id, null: false

      t.timestamps
    end
  end
end
