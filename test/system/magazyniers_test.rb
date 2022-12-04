require "application_system_test_case"

class MagazyniersTest < ApplicationSystemTestCase
  setup do
    @magazynier = magazyniers(:one)
  end

  test "visiting the index" do
    visit magazyniers_url
    assert_selector "h1", text: "Magazyniers"
  end

  test "should create magazynier" do
    visit magazyniers_url
    click_on "New magazynier"

    fill_in "Name", with: @magazynier.Name
    fill_in "Salary", with: @magazynier.Salary
    fill_in "Shift", with: @magazynier.Shift
    fill_in "Surname", with: @magazynier.Surname
    fill_in "Magazyn", with: @magazynier.magazyn_id
    click_on "Create Magazynier"

    assert_text "Magazynier was successfully created"
    click_on "Back"
  end

  test "should update Magazynier" do
    visit magazynier_url(@magazynier)
    click_on "Edit this magazynier", match: :first

    fill_in "Name", with: @magazynier.Name
    fill_in "Salary", with: @magazynier.Salary
    fill_in "Shift", with: @magazynier.Shift
    fill_in "Surname", with: @magazynier.Surname
    fill_in "Magazyn", with: @magazynier.magazyn_id
    click_on "Update Magazynier"

    assert_text "Magazynier was successfully updated"
    click_on "Back"
  end

  test "should destroy Magazynier" do
    visit magazynier_url(@magazynier)
    click_on "Destroy this magazynier", match: :first

    assert_text "Magazynier was successfully destroyed"
  end
end
