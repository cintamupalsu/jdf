require "test_helper"

class AttachedImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attached_image = attached_images(:one)
  end

  test "should get index" do
    get attached_images_url
    assert_response :success
  end

  test "should get new" do
    get new_attached_image_url
    assert_response :success
  end

  test "should create attached_image" do
    assert_difference('AttachedImage.count') do
      post attached_images_url, params: { attached_image: { content: @attached_image.content, general_item_id: @attached_image.general_item_id } }
    end

    assert_redirected_to attached_image_url(AttachedImage.last)
  end

  test "should show attached_image" do
    get attached_image_url(@attached_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_attached_image_url(@attached_image)
    assert_response :success
  end

  test "should update attached_image" do
    patch attached_image_url(@attached_image), params: { attached_image: { content: @attached_image.content, general_item_id: @attached_image.general_item_id } }
    assert_redirected_to attached_image_url(@attached_image)
  end

  test "should destroy attached_image" do
    assert_difference('AttachedImage.count', -1) do
      delete attached_image_url(@attached_image)
    end

    assert_redirected_to attached_images_url
  end
end
