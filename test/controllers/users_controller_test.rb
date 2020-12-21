require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should access to singup" do
    get '/signup'
    assert_response :success
  end

  test "should access to login" do
    get '/login'
    assert_response :success
  end
end
