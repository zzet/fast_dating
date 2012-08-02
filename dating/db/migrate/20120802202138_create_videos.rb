class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.text :code
      t.integer :sort
      t.string :state

      t.timestamps
    end
  end
end
