require 'test_helper'

class ReformsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reforms_index_url
    assert_response :success
  end

  test "should get new" do
    get reforms_new_url
    assert_response :success
  end

  test "should get create" do
    get reforms_create_url
    assert_response :success
  end

  test "should get edit" do
    get reforms_edit_url
    assert_response :success
  end

  test "should get update" do
    get reforms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reforms_destroy_url
    assert_response :success
  end

end
