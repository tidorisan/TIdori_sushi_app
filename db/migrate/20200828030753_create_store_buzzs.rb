class CreateStoreBuzzs < ActiveRecord::Migration[5.2]
  def change
    create_table :store_buzzs do |t|
      t.integer :user_id, null: false, default: ""
      t.integer :store_id, null: false, default: ""
      t.string :title, null: false, default: ""
      t.text :detail, null: false, default: ""
      t.string :image_id
      t.integer :visit_date
      t.integer :use_time, null: false, default: ""
      t.integer :pay_price, null: false, default: ""

      t.timestamps
    end
  end
end
