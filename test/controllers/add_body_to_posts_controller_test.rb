require 'test_helper'

class AddBodyToPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_body_to_post = add_body_to_posts(:one)
  end

  test "should get index" do
    get add_body_to_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_add_body_to_post_url
    assert_response :success
  end

  test "should create add_body_to_post" do
    assert_difference('AddBodyToPost.count') do
      post add_body_to_posts_url, params: { add_body_to_post: { body: @add_body_to_post.body } }
    end

    assert_redirected_to add_body_to_post_url(AddBodyToPost.last)
  end

  test "should show add_body_to_post" do
    get add_body_to_post_url(@add_body_to_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_body_to_post_url(@add_body_to_post)
    assert_response :success
  end

  test "should update add_body_to_post" do
    patch add_body_to_post_url(@add_body_to_post), params: { add_body_to_post: { body: @add_body_to_post.body } }
    assert_redirected_to add_body_to_post_url(@add_body_to_post)
  end

  test "should destroy add_body_to_post" do
    assert_difference('AddBodyToPost.count', -1) do
      delete add_body_to_post_url(@add_body_to_post)
    end

    assert_redirected_to add_body_to_posts_url
  end
end
