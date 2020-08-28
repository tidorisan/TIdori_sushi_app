require 'test_helper'

class Users::CouponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_coupons_index_url
    assert_response :success
  end

  test "should get new" do
    get users_coupons_new_url
    assert_response :success
  end

  test "should get show" do
    get users_coupons_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_coupons_edit_url
    assert_response :success
  end

end
