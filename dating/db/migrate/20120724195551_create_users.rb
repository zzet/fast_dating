class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :remember_me
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.string :avatar
      t.string :weburl

      t.timestamps
    end
  end
end
