require "application_system_test_case"

class ReservationItemsTest < ApplicationSystemTestCase
  setup do
    @reservation_item = reservation_items(:one)
  end

  test "visiting the index" do
    visit reservation_items_url
    assert_selector "h1", text: "Reservation Items"
  end

  test "creating a Reservation item" do
    visit reservation_items_url
    click_on "New Reservation Item"

    fill_in "Reservation", with: @reservation_item.reservation_id
    fill_in "Uid", with: @reservation_item.uid
    click_on "Create Reservation item"

    assert_text "Reservation item was successfully created"
    click_on "Back"
  end

  test "updating a Reservation item" do
    visit reservation_items_url
    click_on "Edit", match: :first

    fill_in "Reservation", with: @reservation_item.reservation_id
    fill_in "Uid", with: @reservation_item.uid
    click_on "Update Reservation item"

    assert_text "Reservation item was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation item" do
    visit reservation_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation item was successfully destroyed"
  end
end
