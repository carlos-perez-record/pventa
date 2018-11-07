require 'test_helper'

class ModificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get modifications_index_url
    assert_response :success
  end

  test "should get new" do
    get modifications_new_url
    assert_response :success
  end

  test "should get create" do
    get modifications_create_url
    assert_response :success
  end

  test "should get edit" do
    get modifications_edit_url
    assert_response :success
  end

  test "should get update" do
    get modifications_update_url
    assert_response :success
  end

  test "should get destroy" do
    get modifications_destroy_url
    assert_response :success
  end

end
