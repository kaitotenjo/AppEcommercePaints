require 'test_helper'

class InteriorPaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interior_paint = interior_paints(:one)
  end

  test "should get index" do
    get interior_paints_url
    assert_response :success
  end

  test "should get new" do
    get new_interior_paint_url
    assert_response :success
  end

  test "should create interior_paint" do
    assert_difference('InteriorPaint.count') do
      post interior_paints_url, params: { interior_paint: { color: @interior_paint.color, description: @interior_paint.description, name: @interior_paint.name, price: @interior_paint.price } }
    end

    assert_redirected_to interior_paint_url(InteriorPaint.last)
  end

  test "should show interior_paint" do
    get interior_paint_url(@interior_paint)
    assert_response :success
  end

  test "should get edit" do
    get edit_interior_paint_url(@interior_paint)
    assert_response :success
  end

  test "should update interior_paint" do
    patch interior_paint_url(@interior_paint), params: { interior_paint: { color: @interior_paint.color, description: @interior_paint.description, name: @interior_paint.name, price: @interior_paint.price } }
    assert_redirected_to interior_paint_url(@interior_paint)
  end

  test "should destroy interior_paint" do
    assert_difference('InteriorPaint.count', -1) do
      delete interior_paint_url(@interior_paint)
    end

    assert_redirected_to interior_paints_url
  end
end
