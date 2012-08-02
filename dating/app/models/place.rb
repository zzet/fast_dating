class Place < ActiveRecord::Base
  attr_accessible :description, :latitude, :limit, :longitude, :map, :name, :state
end
