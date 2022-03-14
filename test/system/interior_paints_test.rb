require "application_system_test_case"

class InteriorPaintsTest < ApplicationSystemTestCase
  setup do
    @interior_paint = interior_paints(:one)
  end

  test "visiting the index" do
    visit interior_paints_url
    assert_selector "h1", text: "Interior Paints"
  end

  test "creating a Interior paint" do
    visit interior_paints_url
    click_on "New Interior Paint"

    fill_in "Color", with: @interior_paint.color
    fill_in "Description", with: @interior_paint.description
    fill_in "Name", with: @interior_paint.name
    fill_in "Price", with: @interior_paint.price
    click_on "Create Interior paint"

    assert_text "Interior paint was successfully created"
    click_on "Back"
  end

  test "updating a Interior paint" do
    visit interior_paints_url
    click_on "Edit", match: :first

    fill_in "Color", with: @interior_paint.color
    fill_in "Description", with: @interior_paint.description
    fill_in "Name", with: @interior_paint.name
    fill_in "Price", with: @interior_paint.price
    click_on "Update Interior paint"

    assert_text "Interior paint was successfully updated"
    click_on "Back"
  end

  test "destroying a Interior paint" do
    visit interior_paints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interior paint was successfully destroyed"
  end
end
