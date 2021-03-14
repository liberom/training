class RenameImgColumnToPhotoColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :cocktails, :img, :photo
  end
end
