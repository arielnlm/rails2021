require "application_system_test_case"

class BookstoreInventoriesTest < ApplicationSystemTestCase
  setup do
    @bookstore_inventory = bookstore_inventories(:one)
  end

  test "visiting the index" do
    visit bookstore_inventories_url
    assert_selector "h1", text: "Bookstore Inventories"
  end

  test "creating a Bookstore inventory" do
    visit bookstore_inventories_url
    click_on "New Bookstore Inventory"

    fill_in "Book", with: @bookstore_inventory.book_id
    fill_in "Bookstore", with: @bookstore_inventory.bookstore_id
    fill_in "Price", with: @bookstore_inventory.price
    fill_in "Quantity", with: @bookstore_inventory.quantity
    click_on "Create Bookstore inventory"

    assert_text "Bookstore inventory was successfully created"
    click_on "Back"
  end

  test "updating a Bookstore inventory" do
    visit bookstore_inventories_url
    click_on "Edit", match: :first

    fill_in "Book", with: @bookstore_inventory.book_id
    fill_in "Bookstore", with: @bookstore_inventory.bookstore_id
    fill_in "Price", with: @bookstore_inventory.price
    fill_in "Quantity", with: @bookstore_inventory.quantity
    click_on "Update Bookstore inventory"

    assert_text "Bookstore inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookstore inventory" do
    visit bookstore_inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookstore inventory was successfully destroyed"
  end
end
