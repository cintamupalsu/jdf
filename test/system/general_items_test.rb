require "application_system_test_case"

class GeneralItemsTest < ApplicationSystemTestCase
  setup do
    @general_item = general_items(:one)
  end

  test "visiting the index" do
    visit general_items_url
    assert_selector "h1", text: "General Items"
  end

  test "creating a General item" do
    visit general_items_url
    click_on "New General Item"

    fill_in "Content", with: @general_item.content
    fill_in "Item type", with: @general_item.item_type_id
    fill_in "Subtitle", with: @general_item.subtitle
    fill_in "Title", with: @general_item.title
    click_on "Create General item"

    assert_text "General item was successfully created"
    click_on "Back"
  end

  test "updating a General item" do
    visit general_items_url
    click_on "Edit", match: :first

    fill_in "Content", with: @general_item.content
    fill_in "Item type", with: @general_item.item_type_id
    fill_in "Subtitle", with: @general_item.subtitle
    fill_in "Title", with: @general_item.title
    click_on "Update General item"

    assert_text "General item was successfully updated"
    click_on "Back"
  end

  test "destroying a General item" do
    visit general_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General item was successfully destroyed"
  end
end
