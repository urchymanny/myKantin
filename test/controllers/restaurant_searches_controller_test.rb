require 'test_helper'

class RestaurantSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_search = restaurant_searches(:one)
  end

  test "should get index" do
    get restaurant_searches_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_search_url
    assert_response :success
  end

  test "should create restaurant_search" do
    assert_difference('RestaurantSearch.count') do
      post restaurant_searches_url, params: { restaurant_search: { keywords: @restaurant_search.keywords } }
    end

    assert_redirected_to restaurant_search_url(RestaurantSearch.last)
  end

  test "should show restaurant_search" do
    get restaurant_search_url(@restaurant_search)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_search_url(@restaurant_search)
    assert_response :success
  end

  test "should update restaurant_search" do
    patch restaurant_search_url(@restaurant_search), params: { restaurant_search: { keywords: @restaurant_search.keywords } }
    assert_redirected_to restaurant_search_url(@restaurant_search)
  end

  test "should destroy restaurant_search" do
    assert_difference('RestaurantSearch.count', -1) do
      delete restaurant_search_url(@restaurant_search)
    end

    assert_redirected_to restaurant_searches_url
  end
end
