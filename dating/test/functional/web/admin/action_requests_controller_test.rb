require 'test_helper'

class Web::Admin::ActionRequestsControllerTest < ActionController::TestCase
  def setup
    @user = create :user
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    attrs = attributes_for :action_request
    post :create, :action_request => attrs
    assert_response :redirect
    new_request = ActionRequest.find_by_name(attrs[:name])
    assert new_request
  end

  test "should get edit" do
    request_to_edit = create :action_request
    get :edit, :id => request_to_edit.id
    assert_response :success
  end

  test "should get update" do
    request_to_update = create :action_request
    attrs = attributes_for :action_request
    put :update, :id => request_to_update.id, :action_request => attrs
    assert_response :redirect
    request_to_update.reload
    assert_equal attrs[:name], request_to_update.name
  end

  test "should get destroy" do
    request_to_destroy = create :action_request
    delete :destroy, :id => request_to_destroy.id
    assert_response :redirect
    deleted_request = ActionRequest.find_by_name(request_to_destroy.name)
    assert_nil deleted_request
  end

  test "should get show" do
    request_to_show = create :action_request
    get :show, :id => request_to_show.id
    assert_response :success
  end

end
