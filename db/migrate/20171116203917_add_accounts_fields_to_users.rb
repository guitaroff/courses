class AddAccountsFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_id, :integer
    add_column :users, :account_type, :string
    add_column :users, :account_role, :integer
  end
end
