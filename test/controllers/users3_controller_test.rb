require "test_helper"

class Users3ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users3_new_url
    assert_response :success
  end
end
