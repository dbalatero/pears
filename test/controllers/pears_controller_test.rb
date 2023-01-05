require "test_helper"

class PearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pear = pears(:one)
  end

  test "should get index" do
    get pears_url
    assert_response :success
  end

  test "should get new" do
    get new_pear_url
    assert_response :success
  end

  test "should create pear" do
    assert_difference("Pear.count") do
      post pears_url, params: { pear: { url: @pear.url } }
    end

    assert_redirected_to pear_url(Pear.last)
  end

  test "should show pear" do
    get pear_url(@pear)
    assert_response :success
  end

  test "should get edit" do
    get edit_pear_url(@pear)
    assert_response :success
  end

  test "should update pear" do
    patch pear_url(@pear), params: { pear: { url: @pear.url } }
    assert_redirected_to pear_url(@pear)
  end

  test "should destroy pear" do
    assert_difference("Pear.count", -1) do
      delete pear_url(@pear)
    end

    assert_redirected_to pears_url
  end
end
