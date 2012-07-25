require 'test_helper'

class Web::Admin::PagesControllerTest < ActionController::TestCase
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
    page_to_edit = create :page
    get :edit, :id => page_to_edit.id
    assert_response :success
  end

  test "should get create" do
    attrs = attributes_for :page
    post :create, :page => attrs
    assert_response :redirect
    @page = Page.find_by_slug attrs[:slug]
    assert @page
  end

  test "should get update" do
    attrs = attributes_for :page
    page_to_update = create :page
    put :update, :id => page_to_update.id, :page => attrs
    assert_response :redirect
    page_to_update.reload
    assert_equal attrs[:slug], page_to_update.slug
  end

  test "should get destroy" do
    page_to_delete = create :page
    delete :destroy, :id => page_to_delete.id
    assert_response :redirect
    nil_page = Page.find_by_slug(page_to_delete.slug)
    assert_nil nil_page
  end

  test "should get show" do
    page_to_show = create :page
    get :show, :id => page_to_show.id
    assert_response :redirect
  end

end
