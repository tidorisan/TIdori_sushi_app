class CreateStoreMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :store_menus do |t|
      t.integer :store_id, null: false
      t.string :name, null: false, default: ""
      t.text :comment, null: false
      t.integer :tax_excluded_price, null: false, default: 0
      t.boolean :display_status, null: false, default: true
      t.integer :menu_genre_id, null: false, default: 0

      t.timestamps
    end
  end
end
