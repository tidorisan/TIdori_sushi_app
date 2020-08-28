require 'test_helper'

class TidoriSushi::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get tidori_sushi_homes_about_url
    assert_response :success
  end

end
