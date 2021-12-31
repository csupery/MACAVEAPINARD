require "application_system_test_case"

class MyWinesTest < ApplicationSystemTestCase
  setup do
    @my_wine = my_wines(:one)
  end

  test "visiting the index" do
    visit my_wines_url
    assert_selector "h1", text: "My Wines"
  end

  test "creating a My wine" do
    visit my_wines_url
    click_on "New My Wine"

    fill_in "Appellation winery", with: @my_wine.appellation_winery_id
    fill_in "My wine cellar", with: @my_wine.my_wine_cellar_id
    fill_in "Name", with: @my_wine.name
    fill_in "Quantity", with: @my_wine.quantity
    fill_in "Size", with: @my_wine.size
    fill_in "Vintage", with: @my_wine.vintage
    click_on "Create My wine"

    assert_text "My wine was successfully created"
    click_on "Back"
  end

  test "updating a My wine" do
    visit my_wines_url
    click_on "Edit", match: :first

    fill_in "Appellation winery", with: @my_wine.appellation_winery_id
    fill_in "My wine cellar", with: @my_wine.my_wine_cellar_id
    fill_in "Name", with: @my_wine.name
    fill_in "Quantity", with: @my_wine.quantity
    fill_in "Size", with: @my_wine.size
    fill_in "Vintage", with: @my_wine.vintage
    click_on "Update My wine"

    assert_text "My wine was successfully updated"
    click_on "Back"
  end

  test "destroying a My wine" do
    visit my_wines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My wine was successfully destroyed"
  end
end
