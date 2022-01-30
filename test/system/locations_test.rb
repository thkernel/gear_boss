require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "creating a Location" do
    visit locations_url
    click_on "New Location"

    fill_in "Description", with: @location.description
    fill_in "Name", with: @location.name
    fill_in "Slug", with: @location.slug
    fill_in "Status", with: @location.status
    fill_in "Uid", with: @location.uid
    fill_in "User", with: @location.user_id
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit locations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @location.description
    fill_in "Name", with: @location.name
    fill_in "Slug", with: @location.slug
    fill_in "Status", with: @location.status
    fill_in "Uid", with: @location.uid
    fill_in "User", with: @location.user_id
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
