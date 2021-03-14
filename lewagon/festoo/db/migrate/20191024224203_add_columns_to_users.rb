class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cpf_cnpj, :string
    add_column :users, :vendor, :boolean, default: :false
  end
end
