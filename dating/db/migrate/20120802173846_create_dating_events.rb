class CreateDatingEvents < ActiveRecord::Migration
  def change
    create_table :dating_events do |t|
      t.date :event_date
      t.string :name
      t.text :description
      t.integer :place_id
      t.string :state
      t.integer :limit
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
