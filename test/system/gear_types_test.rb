require "application_system_test_case"

class GearTypesTest < ApplicationSystemTestCase
  setup do
    @gear_type = gear_types(:one)
  end

  test "visiting the index" do
    visit gear_types_url
    assert_selector "h1", text: "Gear Types"
  end

  test "creating a Gear type" do
    visit gear_types_url
    click_on "New Gear Type"

    fill_in "Description", with: @gear_type.description
    fill_in "Name", with: @gear_type.name
    fill_in "Slug", with: @gear_type.slug
    fill_in "Status", with: @gear_type.status
    fill_in "Uid", with: @gear_type.uid
    fill_in "User", with: @gear_type.user_id
    click_on "Create Gear type"

    assert_text "Gear type was successfully created"
    click_on "Back"
  end

  test "updating a Gear type" do
    visit gear_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gear_type.description
    fill_in "Name", with: @gear_type.name
    fill_in "Slug", with: @gear_type.slug
    fill_in "Status", with: @gear_type.status
    fill_in "Uid", with: @gear_type.uid
    fill_in "User", with: @gear_type.user_id
    click_on "Update Gear type"

    assert_text "Gear type was successfully updated"
    click_on "Back"
  end

  test "destroying a Gear type" do
    visit gear_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gear type was successfully destroyed"
  end
end
