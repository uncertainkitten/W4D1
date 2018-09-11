class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string, null: false
    rename_column :users, :name, :username
    remove_column :users, :email
  end
end
