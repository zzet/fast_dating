require 'test_helper'

class Web::Admin::DatingEventsControllerTest < ActionController::TestCase
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
    attrs = attributes_for :dating_event
    post :create, :dating_event => attrs
    assert_response :redirect
    new_dating_event = DatingEvent.find_by_name(attrs[:name])
    assert new_dating_event
  end

  test "should get edit" do
    dating_event_to_edit = create :dating_event
    get :edit, :id => dating_event_to_edit.id
    assert_response :success
  end

  test "should get update" do
    dating_event_to_update = create :dating_event
    attrs = attributes_for :dating_event
    put :update, :id => dating_event_to_update.id, :dating_event => attrs
    assert_response :redirect
    dating_event_to_update.reload
    assert_equal attrs[:name], dating_event_to_update.name
  end

  test "should get destroy" do
    dating_event_to_destroy = create :dating_event
    delete :destroy, :id => dating_event_to_destroy.id
    assert_response :redirect
    deleted_dating_event = DatingEvent.find_by_name(dating_event_to_destroy.name)
    assert_nil deleted_dating_event
  end

  test "should get show" do
    dating_event_to_show = create :dating_event
    get :show, :id => dating_event_to_show.id
    assert_response :redirect
  end

end
