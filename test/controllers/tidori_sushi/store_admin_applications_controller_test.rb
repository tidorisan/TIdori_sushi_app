require 'test_helper'

class TidoriSushi::StoreAdminApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tidori_sushi_store_admin_applications_new_url
    assert_response :success
  end

  test "should get confirm" do
    get tidori_sushi_store_admin_applications_confirm_url
    assert_response :success
  end

  test "should get success" do
    get tidori_sushi_store_admin_applications_success_url
    assert_response :success
  end

end
