class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :state
      t.integer :limit
      t.text :map
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
