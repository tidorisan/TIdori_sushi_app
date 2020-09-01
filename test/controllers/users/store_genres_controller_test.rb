require 'test_helper'

class Users::StoreGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_store_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get users_store_genres_edit_url
    assert_response :success
  end

end
