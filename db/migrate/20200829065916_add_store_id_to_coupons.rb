class AddStoreIdToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :store_id, :integer, null: false, default: 0
  end
end
