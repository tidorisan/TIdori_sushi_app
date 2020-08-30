class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.integer :store_credit_cards_id
      t.string :genre_name, null: false, default: ""
      t.boolean :display_status, null: false, default: true

      t.timestamps
    end
  end
end
