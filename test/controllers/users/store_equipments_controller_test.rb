require 'test_helper'

class Users::StoreEquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_store_equipments_index_url
    assert_response :success
  end

  test "should get edit" do
    get users_store_equipments_edit_url
    assert_response :success
  end

end
