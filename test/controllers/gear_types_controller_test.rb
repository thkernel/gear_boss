require "test_helper"

class GearTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gear_type = gear_types(:one)
  end

  test "should get index" do
    get gear_types_url
    assert_response :success
  end

  test "should get new" do
    get new_gear_type_url
    assert_response :success
  end

  test "should create gear_type" do
    assert_difference('GearType.count') do
      post gear_types_url, params: { gear_type: { description: @gear_type.description, name: @gear_type.name, slug: @gear_type.slug, status: @gear_type.status, uid: @gear_type.uid, user_id: @gear_type.user_id } }
    end

    assert_redirected_to gear_type_url(GearType.last)
  end

  test "should show gear_type" do
    get gear_type_url(@gear_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_gear_type_url(@gear_type)
    assert_response :success
  end

  test "should update gear_type" do
    patch gear_type_url(@gear_type), params: { gear_type: { description: @gear_type.description, name: @gear_type.name, slug: @gear_type.slug, status: @gear_type.status, uid: @gear_type.uid, user_id: @gear_type.user_id } }
    assert_redirected_to gear_type_url(@gear_type)
  end

  test "should destroy gear_type" do
    assert_difference('GearType.count', -1) do
      delete gear_type_url(@gear_type)
    end

    assert_redirected_to gear_types_url
  end
end
