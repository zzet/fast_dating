class Video < ActiveRecord::Base
  attr_accessible :code, :description, :name, :sort, :state
end
