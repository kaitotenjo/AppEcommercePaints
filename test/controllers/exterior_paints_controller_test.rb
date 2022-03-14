require 'test_helper'

class ExteriorPaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exterior_paint = exterior_paints(:one)
  end

  test "should get index" do
    get exterior_paints_url
    assert_response :success
  end

  test "should get new" do
    get new_exterior_paint_url
    assert_response :success
  end

  test "should create exterior_paint" do
    assert_difference('ExteriorPaint.count') do
      post exterior_paints_url, params: { exterior_paint: { color: @exterior_paint.color, description: @exterior_paint.description, name: @exterior_paint.name, price: @exterior_paint.price } }
    end

    assert_redirected_to exterior_paint_url(ExteriorPaint.last)
  end

  test "should show exterior_paint" do
    get exterior_paint_url(@exterior_paint)
    assert_response :success
  end

  test "should get edit" do
    get edit_exterior_paint_url(@exterior_paint)
    assert_response :success
  end

  test "should update exterior_paint" do
    patch exterior_paint_url(@exterior_paint), params: { exterior_paint: { color: @exterior_paint.color, description: @exterior_paint.description, name: @exterior_paint.name, price: @exterior_paint.price } }
    assert_redirected_to exterior_paint_url(@exterior_paint)
  end

  test "should destroy exterior_paint" do
    assert_difference('ExteriorPaint.count', -1) do
      delete exterior_paint_url(@exterior_paint)
    end

    assert_redirected_to exterior_paints_url
  end
end
