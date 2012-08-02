class AddRefferenceBetweenDatingEventsAndActionRequests < ActiveRecord::Migration
  def change
    add_column :action_requests, :dating_event_id, :integer
  end
end
