class AddScoreToStoreBuzzs < ActiveRecord::Migration[5.2]
  def change
    add_column :store_buzzs, :score, :decimal, precision: 5, scale: 3
  end
end
