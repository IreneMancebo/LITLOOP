require "test_helper"

class nooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nooks_index_url
    assert_response :success
  end

  test "should get show" do
    get nooks_show_url
    assert_response :success
  end

  test "should get new" do
    get nooks_new_url
    assert_response :success
  end
end
