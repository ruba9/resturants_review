require 'test_helper'

class ResturantsReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resturants_review_index_url
    assert_response :success
  end

  test "should get show" do
    get resturants_review_show_url
    assert_response :success
  end

  test "should get new" do
    get resturants_review_new_url
    assert_response :success
  end

  test "should get delete" do
    get resturants_review_delete_url
    assert_response :success
  end

  test "should get edit" do
    get resturants_review_edit_url
    assert_response :success
  end

  test "should get update" do
    get resturants_review_update_url
    assert_response :success
  end

end
