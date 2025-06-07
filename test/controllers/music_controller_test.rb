require "test_helper"

class MusicControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get music_show_url
    assert_response :success
  end
end
