class AddImageToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :img, :string
  end
end
