require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Civility", with: @customer.civility
    fill_in "Company name", with: @customer.company_name
    fill_in "Contry", with: @customer.contry
    fill_in "Customer type", with: @customer.customer_type
    fill_in "Description", with: @customer.description
    fill_in "Email", with: @customer.email
    fill_in "Firt name", with: @customer.firt_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Locality", with: @customer.locality
    fill_in "Phone", with: @customer.phone
    fill_in "Status", with: @customer.status
    fill_in "Uid", with: @customer.uid
    fill_in "User", with: @customer.user_id
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @customer.address
    fill_in "City", with: @customer.city
    fill_in "Civility", with: @customer.civility
    fill_in "Company name", with: @customer.company_name
    fill_in "Contry", with: @customer.contry
    fill_in "Customer type", with: @customer.customer_type
    fill_in "Description", with: @customer.description
    fill_in "Email", with: @customer.email
    fill_in "Firt name", with: @customer.firt_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Locality", with: @customer.locality
    fill_in "Phone", with: @customer.phone
    fill_in "Status", with: @customer.status
    fill_in "Uid", with: @customer.uid
    fill_in "User", with: @customer.user_id
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
