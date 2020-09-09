class AddSignUpAccessToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sign_up_access, :boolean, default: false
  end
end
