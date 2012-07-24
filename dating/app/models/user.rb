class User < ActiveRecord::Base
  attr_accessible :avatar, :email, :firstname, :lastname, :nickname, :password, :remember_me, :weburl
end
