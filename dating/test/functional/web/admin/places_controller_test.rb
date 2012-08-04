require 'test_helper'

class Web::Admin::PlacesControllerTest < ActionController::TestCase
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
    attrs = attributes_for :place
    post :create, :place => attrs
    assert_response :redirect
    new_place = Place.find_by_name(attrs[:name])
    assert new_place
  end

  test "should get edit" do
    place_to_edit = create :place
    get :edit, :id => place_to_edit.id
    assert_response :success
  end

  test "should get update" do
    place_to_update = create :place
    attrs = attributes_for :place
    put :update, :id => place_to_update.id, :place => attrs
    assert_response :redirect
    place_to_update.reload
    assert_equal attrs[:name], place_to_update.name
  end

  test "should get destroy" do
    place_to_destroy = create :place
    delete :destroy, :id => place_to_destroy.id
    assert_response :redirect
    deleted_place = Place.find_by_name(place_to_destroy.name)
    assert_nil deleted_place
  end

  test "should get show" do
    place_to_show = create :place
    get :show, :id => place_to_show.id
    assert_response :redirect
  end

end
