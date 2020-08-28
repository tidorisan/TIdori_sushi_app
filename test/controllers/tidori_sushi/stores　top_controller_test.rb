require 'test_helper'

class TidoriSushi::Stores　topControllerTest < ActionDispatch::IntegrationTest
  test "should get index　show" do
    get tidori_sushi_stores　top_index　show_url
    assert_response :success
  end

end
