require 'test_helper'

class Web::Admin::UsersControllerTest < ActionController::TestCase
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

  test "should get edit" do
    user_to_edit = create :user
    get :edit, :id => user_to_edit.id
    assert_response :success
  end

  test "should get create" do
    attrs = attributes_for :user
    post :create, :user => attrs
    assert_response :redirect
    new_user = User.find_by_email attrs[:email]
    assert new_user
  end

  test "should get update" do
    user_to_update = create :user
    attrs = attributes_for :user
    put :update, :id => user_to_update.id, :user => attrs
    assert_response :redirect
    user_to_update.reload
    assert_equal attrs[:email], user_to_update.email
  end

  test "should get destroy" do
    user_to_delete = create :user
    delete :destroy, :id => user_to_delete.id
    assert_response :redirect
    nil_user = User.find_by_email(user_to_delete.email)
    assert_nil nil_user
  end

  test "should get show" do
    user_to_show = create :user
    get :show, :id => user_to_show.id
    assert_response :redirect
  end

end
