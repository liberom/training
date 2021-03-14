class AddBillingAddToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :billing_add, :string
  end
end
