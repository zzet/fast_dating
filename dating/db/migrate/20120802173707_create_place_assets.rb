class CreatePlaceAssets < ActiveRecord::Migration
  def change
    create_table :place_assets do |t|
      t.string :name
      t.text :description
      t.string :file

      t.timestamps
    end
  end
end
