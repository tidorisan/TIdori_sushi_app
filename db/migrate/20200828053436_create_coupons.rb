class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.text :reason, null: false
      t.text :detail, null: false
      t.boolean :enabled_status, null: false, default: true
      t.string :image_id, default: ""
      t.string :target, null: false, default: ""
      t.text :writing, null: false, default: ""
      t.integer :expiration_date, null: false, default: 0

      t.timestamps
    end
  end
end
