require "application_system_test_case"

class InteriorPaintsTest < ApplicationSystemTestCase
  setup do
    @interior__paint = interior__paints(:one)
  end

  test "visiting the index" do
    visit interior__paints_url
    assert_selector "h1", text: "Interior Paints"
  end

  test "creating a Interior  paint" do
    visit interior__paints_url
    click_on "New Interior Paint"

    fill_in "Color", with: @interior__paint.color
    fill_in "Description", with: @interior__paint.description
    fill_in "Name", with: @interior__paint.name
    fill_in "Price", with: @interior__paint.price
    click_on "Create Interior  paint"

    assert_text "Interior  paint was successfully created"
    click_on "Back"
  end

  test "updating a Interior  paint" do
    visit interior__paints_url
    click_on "Edit", match: :first

    fill_in "Color", with: @interior__paint.color
    fill_in "Description", with: @interior__paint.description
    fill_in "Name", with: @interior__paint.name
    fill_in "Price", with: @interior__paint.price
    click_on "Update Interior  paint"

    assert_text "Interior  paint was successfully updated"
    click_on "Back"
  end

  test "destroying a Interior  paint" do
    visit interior__paints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interior  paint was successfully destroyed"
  end
end
