class RemoveSignUpAccessFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sign_up_access, :boolean, default: false
  end
end
