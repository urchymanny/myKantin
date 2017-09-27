require 'test_helper'

class LgasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lga = lgas(:one)
  end

  test "should get index" do
    get lgas_url
    assert_response :success
  end

  test "should get new" do
    get new_lga_url
    assert_response :success
  end

  test "should create lga" do
    assert_difference('Lga.count') do
      post lgas_url, params: { lga: { name: @lga.name, state_id: @lga.state_id } }
    end

    assert_redirected_to lga_url(Lga.last)
  end

  test "should show lga" do
    get lga_url(@lga)
    assert_response :success
  end

  test "should get edit" do
    get edit_lga_url(@lga)
    assert_response :success
  end

  test "should update lga" do
    patch lga_url(@lga), params: { lga: { name: @lga.name, state_id: @lga.state_id } }
    assert_redirected_to lga_url(@lga)
  end

  test "should destroy lga" do
    assert_difference('Lga.count', -1) do
      delete lga_url(@lga)
    end

    assert_redirected_to lgas_url
  end
end
