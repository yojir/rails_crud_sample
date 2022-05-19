require "test_helper"

class FavoriteFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_food = favorite_foods(:one)
  end

  test "should get index" do
    get favorite_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_food_url
    assert_response :success
  end

  test "should create favorite_food" do
    assert_difference("FavoriteFood.count") do
      post favorite_foods_url, params: { favorite_food: { food: @favorite_food.food, user: @favorite_food.user } }
    end

    assert_redirected_to favorite_food_url(FavoriteFood.last)
  end

  test "should show favorite_food" do
    get favorite_food_url(@favorite_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_food_url(@favorite_food)
    assert_response :success
  end

  test "should update favorite_food" do
    patch favorite_food_url(@favorite_food), params: { favorite_food: { food: @favorite_food.food, user: @favorite_food.user } }
    assert_redirected_to favorite_food_url(@favorite_food)
  end

  test "should destroy favorite_food" do
    assert_difference("FavoriteFood.count", -1) do
      delete favorite_food_url(@favorite_food)
    end

    assert_redirected_to favorite_foods_url
  end
end
