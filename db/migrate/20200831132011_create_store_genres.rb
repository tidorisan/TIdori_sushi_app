class CreateStoreGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :store_genres do |t|
      t.string :genre_name, null: false
      t.boolean :display_status, null: false, default: true

      t.timestamps
    end
  end
end
