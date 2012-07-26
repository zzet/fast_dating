class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :cost
      t.string :coupone_code
      t.string :name
      t.string :phone
      t.string :email
      t.string :sex
      t.date :birthdate

      t.timestamps
    end
  end
end
