require 'test_helper'

class TidoriSushi::MenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tidori_sushi_menus_index_url
    assert_response :success
  end

end
