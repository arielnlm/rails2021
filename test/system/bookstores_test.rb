require "application_system_test_case"

class BookstoresTest < ApplicationSystemTestCase
  setup do
    @bookstore = bookstores(:one)
  end

  test "visiting the index" do
    visit bookstores_url
    assert_selector "h1", text: "Bookstores"
  end

  test "creating a Bookstore" do
    visit bookstores_url
    click_on "New Bookstore"

    fill_in "Name", with: @bookstore.name
    click_on "Create Bookstore"

    assert_text "Bookstore was successfully created"
    click_on "Back"
  end

  test "updating a Bookstore" do
    visit bookstores_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bookstore.name
    click_on "Update Bookstore"

    assert_text "Bookstore was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookstore" do
    visit bookstores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookstore was successfully destroyed"
  end
end
