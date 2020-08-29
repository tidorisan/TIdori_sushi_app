class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.integer :user_id, null: false
      t.string :address, null: false, default: ""
      t.float :latitude
      t.float :longitude
      t.integer :postal_code, null: false, default: 0
      t.string :store_name, null: false, default: ""
      t.string :kana_store_name, null: false, default: ""
      t.integer :phone_number, null: false, default: 0
      t.string :branch_name, null: false, default: ""
      t.string :kana_branch_name, null: false, default: ""
      t.string :image_id, null: false, default: ""
      t.integer :store_genre, null: false, default: 0
      t.text :reservation_of_considerations, null: false, default: ""
      t.integer :reservation, null: false, default: 0
      t.text :traffic_method, null: false, default: ""
      t.string :business_day, null: false, default: ""
      t.string :regular_holiday, null: false, default: ""
      t.string :consumption_budget, null: false, default: ""
      t.integer :credit_card_id, null: false, default: 0
      t.integer :e_bill_id, null: false, default: 0
      t.string :equipment, null: false, default: ""
      t.boolean :private_room, null: false
      t.boolean :reserved, null: false
      t.integer :parking, null: false, default: 0
      t.integer :no_smoking, null: false
      t.integer :store_equipment_id, null: false, default: 0
      t.text :home_page, null: false, default: ""
      t.text :news, null: false, default: ""
      t.boolean :display_status, null: false, default: true



      t.timestamps
    end
  end
end
