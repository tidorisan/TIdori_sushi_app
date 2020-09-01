class CreateFavoriteStores < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_stores do |t|
      t.integer :store_id, null: false
      t.integer :user_id, null: false

      t.timestamps
      t.index [:user_id, :store_id], unique: true
    end
  end
end
