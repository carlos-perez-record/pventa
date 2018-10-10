require 'test_helper'

class TechnologiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get technologies_new_url
    assert_response :success
  end

  test "should get create" do
    get technologies_create_url
    assert_response :success
  end

  test "should get edit" do
    get technologies_edit_url
    assert_response :success
  end

  test "should get update" do
    get technologies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get technologies_destroy_url
    assert_response :success
  end

end
