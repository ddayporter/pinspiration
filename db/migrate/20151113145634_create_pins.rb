class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :image_url
      t.references :user
      t.references :board
    end
  end
end
