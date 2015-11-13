class CreatePinTags < ActiveRecord::Migration
  def change
    create_table :pin_tags do |t|
      t.references :pin
      t.references :tag
    end
  end
end
