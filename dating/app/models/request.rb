class Request < ActiveRecord::Base
  attr_accessible :birthdate, :cost, :coupone_code, :email, :name, :phone, :sex
end
