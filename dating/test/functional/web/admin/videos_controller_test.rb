require 'test_helper'

class Web::Admin::VideosControllerTest < ActionController::TestCase
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
    attrs = attributes_for :video
    post :create, :video => attrs
    assert_response :redirect
    new_video = Video.find_by_name(attrs[:name])
    assert new_video
  end

  test "should get edit" do
    video_to_edit = create :video
    get :edit, :id => video_to_edit.id
    assert_response :success
  end

  test "should get update" do
    video_to_update = create :video
    attrs = attributes_for :video
    put :update, :id => video_to_update.id, :video => attrs
    assert_response :redirect
    video_to_update.reload
    assert_equal attrs[:name], video_to_update.name
  end

  test "should get destroy" do
    video_to_destroy = create :video
    delete :destroy, :id => video_to_destroy.id
    assert_response :redirect
    deleted_video = Video.find_by_name(video_to_destroy.name)
    assert_nil deleted_video
  end

  test "should get show" do
    video_to_show = create :video
    get :show, :id => video_to_show.id
    assert_response :redirect
  end

end
