class AddDefaultUser < ActiveRecord::Migration
  def up
    user = User.new
    user.email = "email@example.com"
    user.password = "password"
    user.firstname = "Admin"
    user.save
  end

  def down
    user = User.find_by_email("email@example.com")
    if user.present?
      user.destroy
    end
  end
end
