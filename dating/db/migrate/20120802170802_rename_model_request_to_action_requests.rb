class RenameModelRequestToActionRequests < ActiveRecord::Migration
  def change
    rename_table :requests, :action_requests
  end
end
