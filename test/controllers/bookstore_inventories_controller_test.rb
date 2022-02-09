require "test_helper"

class BookstoreInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookstore_inventory = bookstore_inventories(:one)
  end

  test "should get index" do
    get bookstore_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_bookstore_inventory_url
    assert_response :success
  end

  test "should create bookstore_inventory" do
    assert_difference('BookstoreInventory.count') do
      post bookstore_inventories_url, params: { bookstore_inventory: { book_id: @bookstore_inventory.book_id, bookstore_id: @bookstore_inventory.bookstore_id, price: @bookstore_inventory.price, quantity: @bookstore_inventory.quantity } }
    end

    assert_redirected_to bookstore_inventory_url(BookstoreInventory.last)
  end

  test "should show bookstore_inventory" do
    get bookstore_inventory_url(@bookstore_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookstore_inventory_url(@bookstore_inventory)
    assert_response :success
  end

  test "should update bookstore_inventory" do
    patch bookstore_inventory_url(@bookstore_inventory), params: { bookstore_inventory: { book_id: @bookstore_inventory.book_id, bookstore_id: @bookstore_inventory.bookstore_id, price: @bookstore_inventory.price, quantity: @bookstore_inventory.quantity } }
    assert_redirected_to bookstore_inventory_url(@bookstore_inventory)
  end

  test "should destroy bookstore_inventory" do
    assert_difference('BookstoreInventory.count', -1) do
      delete bookstore_inventory_url(@bookstore_inventory)
    end

    assert_redirected_to bookstore_inventories_url
  end
end
