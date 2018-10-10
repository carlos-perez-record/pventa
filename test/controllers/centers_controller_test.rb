require 'test_helper'

class CentersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get centers_index_url
    assert_response :success
  end

  test "should get new" do
    get centers_new_url
    assert_response :success
  end

  test "should get create" do
    get centers_create_url
    assert_response :success
  end

  test "should get update" do
    get centers_update_url
    assert_response :success
  end

  test "should get edit" do
    get centers_edit_url
    assert_response :success
  end

  test "should get show" do
    get centers_show_url
    assert_response :success
  end

  test "should get destroy" do
    get centers_destroy_url
    assert_response :success
  end

  test "should get center_params" do
    get centers_center_params_url
    assert_response :success
  end

end
