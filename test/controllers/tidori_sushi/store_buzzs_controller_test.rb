require 'test_helper'

class TidoriSushi::StoreBuzzsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tidori_sushi_store_buzzs_new_url
    assert_response :success
  end

  test "should get index" do
    get tidori_sushi_store_buzzs_index_url
    assert_response :success
  end

end
