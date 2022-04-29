require "application_system_test_case"

class AttachedImagesTest < ApplicationSystemTestCase
  setup do
    @attached_image = attached_images(:one)
  end

  test "visiting the index" do
    visit attached_images_url
    assert_selector "h1", text: "Attached Images"
  end

  test "creating a Attached image" do
    visit attached_images_url
    click_on "New Attached Image"

    fill_in "Content", with: @attached_image.content
    fill_in "General item", with: @attached_image.general_item_id
    click_on "Create Attached image"

    assert_text "Attached image was successfully created"
    click_on "Back"
  end

  test "updating a Attached image" do
    visit attached_images_url
    click_on "Edit", match: :first

    fill_in "Content", with: @attached_image.content
    fill_in "General item", with: @attached_image.general_item_id
    click_on "Update Attached image"

    assert_text "Attached image was successfully updated"
    click_on "Back"
  end

  test "destroying a Attached image" do
    visit attached_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attached image was successfully destroyed"
  end
end
