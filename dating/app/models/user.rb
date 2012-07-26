class User < ActiveRecord::Base
  include UsefullScopes

  attr_accessible :avatar,
                  :email,
                  :firstname,
                  :lastname,
                  :nickname,
                  :password,
                  :password_digest,
                  :remember_me,
                  :weburl

  has_secure_password
end
