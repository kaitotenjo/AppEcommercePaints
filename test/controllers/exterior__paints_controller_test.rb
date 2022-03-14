require 'test_helper'

class ExteriorPaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exterior__paint = exterior__paints(:one)
  end

  test "should get index" do
    get exterior__paints_url
    assert_response :success
  end

  test "should get new" do
    get new_exterior__paint_url
    assert_response :success
  end

  test "should create exterior__paint" do
    assert_difference('ExteriorPaint.count') do
      post exterior__paints_url, params: { exterior__paint: { color: @exterior__paint.color, description: @exterior__paint.description, name: @exterior__paint.name, price: @exterior__paint.price } }
    end

    assert_redirected_to exterior__paint_url(ExteriorPaint.last)
  end

  test "should show exterior__paint" do
    get exterior__paint_url(@exterior__paint)
    assert_response :success
  end

  test "should get edit" do
    get edit_exterior__paint_url(@exterior__paint)
    assert_response :success
  end

  test "should update exterior__paint" do
    patch exterior__paint_url(@exterior__paint), params: { exterior__paint: { color: @exterior__paint.color, description: @exterior__paint.description, name: @exterior__paint.name, price: @exterior__paint.price } }
    assert_redirected_to exterior__paint_url(@exterior__paint)
  end

  test "should destroy exterior__paint" do
    assert_difference('ExteriorPaint.count', -1) do
      delete exterior__paint_url(@exterior__paint)
    end

    assert_redirected_to exterior__paints_url
  end
end
