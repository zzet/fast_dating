require 'test_helper'

class Web::PagesControllerTest < ActionController::TestCase
  def setup
    @page = create :page
  end

  test "should get show with id" do
    get :show, :id => @page.id
    assert_response :success
  end

  test "should get show with slug" do
    get :show, :id => @page.slug
    assert_response :success
  end

end
