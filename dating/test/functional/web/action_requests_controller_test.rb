require 'test_helper'

class Web::ActionRequestsControllerTest < ActionController::TestCase
  test "should get create" do
    request_to_create = attributes_for :user_request
    post :create, :action_request => request_to_create
    assert_response :success
    created_request = ActionRequest.find_by_name(request_to_create[:name])
    assert created_request
  end

end
