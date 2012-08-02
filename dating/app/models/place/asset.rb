class Place::Asset < ActiveRecord::Base
  attr_accessible :description, :file, :name
end
