class CreateStoreBuzzs < ActiveRecord::Migration[5.2]
  def change
    create_table :store_buzzs do |t|
      t.integer :user_id, null: false
      t.integer :store_id, null: false
      t.string :title, null: false, default: ""
      t.text :detail, null: false
      t.string :image_id
      t.integer :visit_date
      t.integer :use_time, null: false
      t.integer :pay_price, null: false

      t.timestamps
    end
  end
end
