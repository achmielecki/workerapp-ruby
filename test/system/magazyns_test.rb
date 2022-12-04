require "application_system_test_case"

class MagazynsTest < ApplicationSystemTestCase
  setup do
    @magazyn = magazyns(:one)
  end

  test "visiting the index" do
    visit magazyns_url
    assert_selector "h1", text: "Magazyns"
  end

  test "should create magazyn" do
    visit magazyns_url
    click_on "New magazyn"

    fill_in "City", with: @magazyn.City
    fill_in "Country", with: @magazyn.Country
    fill_in "Postalcode", with: @magazyn.PostalCode
    fill_in "Street", with: @magazyn.Street
    click_on "Create Magazyn"

    assert_text "Magazyn was successfully created"
    click_on "Back"
  end

  test "should update Magazyn" do
    visit magazyn_url(@magazyn)
    click_on "Edit this magazyn", match: :first

    fill_in "City", with: @magazyn.City
    fill_in "Country", with: @magazyn.Country
    fill_in "Postalcode", with: @magazyn.PostalCode
    fill_in "Street", with: @magazyn.Street
    click_on "Update Magazyn"

    assert_text "Magazyn was successfully updated"
    click_on "Back"
  end

  test "should destroy Magazyn" do
    visit magazyn_url(@magazyn)
    click_on "Destroy this magazyn", match: :first

    assert_text "Magazyn was successfully destroyed"
  end
end
