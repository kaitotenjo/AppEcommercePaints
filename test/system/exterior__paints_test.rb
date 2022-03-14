require "application_system_test_case"

class ExteriorPaintsTest < ApplicationSystemTestCase
  setup do
    @exterior__paint = exterior__paints(:one)
  end

  test "visiting the index" do
    visit exterior__paints_url
    assert_selector "h1", text: "Exterior Paints"
  end

  test "creating a Exterior  paint" do
    visit exterior__paints_url
    click_on "New Exterior Paint"

    fill_in "Color", with: @exterior__paint.color
    fill_in "Description", with: @exterior__paint.description
    fill_in "Name", with: @exterior__paint.name
    fill_in "Price", with: @exterior__paint.price
    click_on "Create Exterior  paint"

    assert_text "Exterior  paint was successfully created"
    click_on "Back"
  end

  test "updating a Exterior  paint" do
    visit exterior__paints_url
    click_on "Edit", match: :first

    fill_in "Color", with: @exterior__paint.color
    fill_in "Description", with: @exterior__paint.description
    fill_in "Name", with: @exterior__paint.name
    fill_in "Price", with: @exterior__paint.price
    click_on "Update Exterior  paint"

    assert_text "Exterior  paint was successfully updated"
    click_on "Back"
  end

  test "destroying a Exterior  paint" do
    visit exterior__paints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exterior  paint was successfully destroyed"
  end
end
