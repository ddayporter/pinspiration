class ChangePinsImageUrlColumnToImage < ActiveRecord::Migration
  def change
    rename_column :pins, :image_url, :image
  end
end
