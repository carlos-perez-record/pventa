require 'test_helper'

class ActivatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activates_index_url
    assert_response :success
  end

  test "should get new" do
    get activates_new_url
    assert_response :success
  end

  test "should get create" do
    get activates_create_url
    assert_response :success
  end

  test "should get show" do
    get activates_show_url
    assert_response :success
  end

  test "should get edit" do
    get activates_edit_url
    assert_response :success
  end

  test "should get update" do
    get activates_update_url
    assert_response :success
  end

  test "should get destroy" do
    get activates_destroy_url
    assert_response :success
  end

end
