class DatingEvent < ActiveRecord::Base
  attr_accessible :description, :event_date, :limit, :name, :place_id, :state, :time_end, :time_start
end
