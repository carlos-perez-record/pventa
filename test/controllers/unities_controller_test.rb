require 'test_helper'

class UnitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unities_index_url
    assert_response :success
  end

  test "should get new" do
    get unities_new_url
    assert_response :success
  end

  test "should get create" do
    get unities_create_url
    assert_response :success
  end

  test "should get edit" do
    get unities_edit_url
    assert_response :success
  end

  test "should get update" do
    get unities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get unities_destroy_url
    assert_response :success
  end

end
