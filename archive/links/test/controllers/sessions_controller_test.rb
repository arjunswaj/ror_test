require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get login," do
    get :login,
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
