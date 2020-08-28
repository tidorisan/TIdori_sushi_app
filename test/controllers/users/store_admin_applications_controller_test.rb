require 'test_helper'

class Users::StoreAdminApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_store_admin_applications_index_url
    assert_response :success
  end

  test "should get show" do
    get users_store_admin_applications_show_url
    assert_response :success
  end

end
