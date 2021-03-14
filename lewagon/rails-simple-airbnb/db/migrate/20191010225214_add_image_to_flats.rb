class AddImageToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :img_url, :string
  end
end
