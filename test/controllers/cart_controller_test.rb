require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_index_url
    assert_response :success
  end

  test "should get add_item" do
    get cart_add_item_url
    assert_response :success
  end

  test "should get remove_item" do
    get cart_remove_item_url
    assert_response :success
  end

  test "should get empty" do
    get cart_empty_url
    assert_response :success
  end

end
