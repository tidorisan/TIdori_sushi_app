class CreateStoreBuzzs < ActiveRecord::Migration[5.2]
  def change
    create_table :store_buzzs do |t|
      t.integer :user_id, null: false
      t.integer :store_id, null: false
      t.string :title, null: false, default: ""
      t.text :detail, null: false
      t.string :image_id
      t.date :visit_date
      t.integer :use_time
      t.integer :pay_price

      t.timestamps
    end
  end
end
