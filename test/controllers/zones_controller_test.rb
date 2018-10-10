require 'test_helper'

class ZonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zones_index_url
    assert_response :success
  end

  test "should get new" do
    get zones_new_url
    assert_response :success
  end

  test "should get create" do
    get zones_create_url
    assert_response :success
  end

  test "should get edit" do
    get zones_edit_url
    assert_response :success
  end

  test "should get update" do
    get zones_update_url
    assert_response :success
  end

  test "should get destroy" do
    get zones_destroy_url
    assert_response :success
  end

end
