class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.float :price
      t.boolean :status, default: true
      t.integer :amount

      t.timestamps
    end
  end
end
