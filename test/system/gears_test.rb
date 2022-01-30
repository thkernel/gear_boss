require "application_system_test_case"

class GearsTest < ApplicationSystemTestCase
  setup do
    @gear = gears(:one)
  end

  test "visiting the index" do
    visit gears_url
    assert_selector "h1", text: "Gears"
  end

  test "creating a Gear" do
    visit gears_url
    click_on "New Gear"

    fill_in "Brand", with: @gear.brand
    fill_in "Description", with: @gear.description
    fill_in "Gear type", with: @gear.gear_type_id
    fill_in "Manufacture year", with: @gear.manufacture_year
    fill_in "Model", with: @gear.model
    fill_in "Name", with: @gear.name
    fill_in "Slug", with: @gear.slug
    fill_in "Status", with: @gear.status
    fill_in "Uid", with: @gear.uid
    fill_in "User", with: @gear.user_id
    click_on "Create Gear"

    assert_text "Gear was successfully created"
    click_on "Back"
  end

  test "updating a Gear" do
    visit gears_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @gear.brand
    fill_in "Description", with: @gear.description
    fill_in "Gear type", with: @gear.gear_type_id
    fill_in "Manufacture year", with: @gear.manufacture_year
    fill_in "Model", with: @gear.model
    fill_in "Name", with: @gear.name
    fill_in "Slug", with: @gear.slug
    fill_in "Status", with: @gear.status
    fill_in "Uid", with: @gear.uid
    fill_in "User", with: @gear.user_id
    click_on "Update Gear"

    assert_text "Gear was successfully updated"
    click_on "Back"
  end

  test "destroying a Gear" do
    visit gears_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gear was successfully destroyed"
  end
end
