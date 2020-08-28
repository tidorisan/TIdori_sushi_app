require 'test_helper'

class Users::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_users_new_url
    assert_response :success
  end

end
