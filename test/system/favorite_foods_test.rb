require "application_system_test_case"

class FavoriteFoodsTest < ApplicationSystemTestCase
  setup do
    @favorite_food = favorite_foods(:one)
  end

  test "visiting the index" do
    visit favorite_foods_url
    assert_selector "h1", text: "Favorite foods"
  end

  test "should create favorite food" do
    visit favorite_foods_url
    click_on "New favorite food"

    fill_in "Food", with: @favorite_food.food
    fill_in "User", with: @favorite_food.user
    click_on "Create Favorite food"

    assert_text "Favorite food was successfully created"
    click_on "Back"
  end

  test "should update Favorite food" do
    visit favorite_food_url(@favorite_food)
    click_on "Edit this favorite food", match: :first

    fill_in "Food", with: @favorite_food.food
    fill_in "User", with: @favorite_food.user
    click_on "Update Favorite food"

    assert_text "Favorite food was successfully updated"
    click_on "Back"
  end

  test "should destroy Favorite food" do
    visit favorite_food_url(@favorite_food)
    click_on "Destroy this favorite food", match: :first

    assert_text "Favorite food was successfully destroyed"
  end
end
