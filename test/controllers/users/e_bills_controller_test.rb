require 'test_helper'

class Users::EBillsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_e_bills_index_url
    assert_response :success
  end

  test "should get edit" do
    get users_e_bills_edit_url
    assert_response :success
  end

end
