require "test_helper"

class AudiogramsControllerTest < ActionDispatch::IntegrationTest
  test "should get manage" do
    get audiograms_manage_url
    assert_response :success
  end
end
