require 'test_helper'

class ResturantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resturants_index_url
    assert_response :success
  end

  test "should get show" do
    get resturants_show_url
    assert_response :success
  end

  test "should get new" do
    get resturants_new_url
    assert_response :success
  end

  test "should get delete" do
    get resturants_delete_url
    assert_response :success
  end

  test "should get edit" do
    get resturants_edit_url
    assert_response :success
  end

  test "should get update" do
    get resturants_update_url
    assert_response :success
  end

  test "should get create" do
    get resturants_create_url
    assert_response :success
  end

end
