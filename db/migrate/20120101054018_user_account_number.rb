class UserAccountNumber < ActiveRecord::Migration
  def up
    add_column :users, :account_id, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :church_name, :string
  end

  def down
    remove_column :users, :account_id
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :church_name
  end
end
