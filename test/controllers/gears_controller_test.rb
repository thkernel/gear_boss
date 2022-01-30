require "test_helper"

class GearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gear = gears(:one)
  end

  test "should get index" do
    get gears_url
    assert_response :success
  end

  test "should get new" do
    get new_gear_url
    assert_response :success
  end

  test "should create gear" do
    assert_difference('Gear.count') do
      post gears_url, params: { gear: { brand: @gear.brand, description: @gear.description, gear_type_id: @gear.gear_type_id, manufacture_year: @gear.manufacture_year, model: @gear.model, name: @gear.name, slug: @gear.slug, status: @gear.status, uid: @gear.uid, user_id: @gear.user_id } }
    end

    assert_redirected_to gear_url(Gear.last)
  end

  test "should show gear" do
    get gear_url(@gear)
    assert_response :success
  end

  test "should get edit" do
    get edit_gear_url(@gear)
    assert_response :success
  end

  test "should update gear" do
    patch gear_url(@gear), params: { gear: { brand: @gear.brand, description: @gear.description, gear_type_id: @gear.gear_type_id, manufacture_year: @gear.manufacture_year, model: @gear.model, name: @gear.name, slug: @gear.slug, status: @gear.status, uid: @gear.uid, user_id: @gear.user_id } }
    assert_redirected_to gear_url(@gear)
  end

  test "should destroy gear" do
    assert_difference('Gear.count', -1) do
      delete gear_url(@gear)
    end

    assert_redirected_to gears_url
  end
end
