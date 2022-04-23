require "test_helper"

class GeneralItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general_item = general_items(:one)
  end

  test "should get index" do
    get general_items_url
    assert_response :success
  end

  test "should get new" do
    get new_general_item_url
    assert_response :success
  end

  test "should create general_item" do
    assert_difference('GeneralItem.count') do
      post general_items_url, params: { general_item: { content: @general_item.content, item_type_id: @general_item.item_type_id, subtitle: @general_item.subtitle, title: @general_item.title } }
    end

    assert_redirected_to general_item_url(GeneralItem.last)
  end

  test "should show general_item" do
    get general_item_url(@general_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_item_url(@general_item)
    assert_response :success
  end

  test "should update general_item" do
    patch general_item_url(@general_item), params: { general_item: { content: @general_item.content, item_type_id: @general_item.item_type_id, subtitle: @general_item.subtitle, title: @general_item.title } }
    assert_redirected_to general_item_url(@general_item)
  end

  test "should destroy general_item" do
    assert_difference('GeneralItem.count', -1) do
      delete general_item_url(@general_item)
    end

    assert_redirected_to general_items_url
  end
end
