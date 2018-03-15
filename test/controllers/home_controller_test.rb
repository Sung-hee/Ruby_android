require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get charts" do
    get :charts
    assert_response :success
  end

  test "should get tables" do
    get :tables
    assert_response :success
  end

end
