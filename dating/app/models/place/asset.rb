class Place::Asset < ActiveRecord::Base
  include UsefullScopes
  attr_accessible :description,
                  :file,
                  :name
end
