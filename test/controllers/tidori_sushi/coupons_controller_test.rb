require 'test_helper'

class TidoriSushi::CouponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tidori_sushi_coupons_index_url
    assert_response :success
  end

  test "should get show" do
    get tidori_sushi_coupons_show_url
    assert_response :success
  end

end
