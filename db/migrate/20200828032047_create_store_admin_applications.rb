class CreateStoreAdminApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :store_admin_applications do |t|
      t.string :address, null: false, default: ""
      t.integer :postal_code, null: false, default: 0
      t.string :store_name, null: false, default: ""
      t.string :kana_store_name, null: false, default: ""
      t.integer :phone_number, null: false, default: 0
      t.string :branch_name, default: ""
      t.string :kana_branch_name, default: ""
      t.string :email, null: false, default: ""
      t.string :family_name, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :kana_family_name, null: false, default: ""
      t.string :kana_first_name, null: false, default: ""
      t.integer :birthday, null: false, default: ""
      t.integer :job_title, null: false, default: ""
      t.boolean :permit_to_store_manager, null: false, default: ""
      t.boolean :get_restaurant_sales_permit_form, null: false, default: ""
      t.boolean :related_with_antisocial_force, null: false, default: ""
      t.boolean :mannaers_industry, null: false, default: ""
      t.boolean :process_status, null: false, default: true


      t.timestamps
    end
  end
end
