require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_index_url
    assert_response :success
  end

  test "should get new" do
    get books_new_url
    assert_response :success
  end

  test "should get view" do
    get books_view_url
    assert_response :success
  end

  test "should get edit" do
    get books_edit_url
    assert_response :success
  end

  test "should get delete" do
    get books_delete_url
    assert_response :success
  end

end
