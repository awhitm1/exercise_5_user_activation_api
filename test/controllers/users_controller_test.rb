require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get activate" do
    get users_activate_url
    assert_response :success
  end

  test "should get deactivate" do
    get users_deactivate_url
    assert_response :success
  end
end
