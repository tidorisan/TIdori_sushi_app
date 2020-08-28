require 'test_helper'

class Users::MenuGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_menu_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get users_menu_genres_edit_url
    assert_response :success
  end

end
