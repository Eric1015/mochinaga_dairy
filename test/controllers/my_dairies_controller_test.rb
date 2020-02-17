require 'test_helper'

class MyDairiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_dairy = my_dairies(:one)
  end

  test "should get index" do
    get my_dairies_url
    assert_response :success
  end

  test "should get new" do
    get new_my_dairy_url
    assert_response :success
  end

  test "should create my_dairy" do
    assert_difference('MyDairy.count') do
      post my_dairies_url, params: { my_dairy: { content: @my_dairy.content } }
    end

    assert_redirected_to my_dairy_url(MyDairy.last)
  end

  test "should show my_dairy" do
    get my_dairy_url(@my_dairy)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_dairy_url(@my_dairy)
    assert_response :success
  end

  test "should update my_dairy" do
    patch my_dairy_url(@my_dairy), params: { my_dairy: { content: @my_dairy.content } }
    assert_redirected_to my_dairy_url(@my_dairy)
  end

  test "should destroy my_dairy" do
    assert_difference('MyDairy.count', -1) do
      delete my_dairy_url(@my_dairy)
    end

    assert_redirected_to my_dairies_url
  end
end
