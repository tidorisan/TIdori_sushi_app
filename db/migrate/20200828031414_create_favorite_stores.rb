class CreateFavoriteStores < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_stores do |t|
      t.integer :store_id, null: false, default: ""
      t.integer :customer_id, null: false, default: ""

      t.timestamps
    end
  end
end
