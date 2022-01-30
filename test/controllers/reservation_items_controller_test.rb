require "test_helper"

class ReservationItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_item = reservation_items(:one)
  end

  test "should get index" do
    get reservation_items_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_item_url
    assert_response :success
  end

  test "should create reservation_item" do
    assert_difference('ReservationItem.count') do
      post reservation_items_url, params: { reservation_item: { reservation_id: @reservation_item.reservation_id, uid: @reservation_item.uid } }
    end

    assert_redirected_to reservation_item_url(ReservationItem.last)
  end

  test "should show reservation_item" do
    get reservation_item_url(@reservation_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_item_url(@reservation_item)
    assert_response :success
  end

  test "should update reservation_item" do
    patch reservation_item_url(@reservation_item), params: { reservation_item: { reservation_id: @reservation_item.reservation_id, uid: @reservation_item.uid } }
    assert_redirected_to reservation_item_url(@reservation_item)
  end

  test "should destroy reservation_item" do
    assert_difference('ReservationItem.count', -1) do
      delete reservation_item_url(@reservation_item)
    end

    assert_redirected_to reservation_items_url
  end
end
