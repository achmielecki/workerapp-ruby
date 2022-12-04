require "application_system_test_case"

class DyrektorsTest < ApplicationSystemTestCase
  setup do
    @dyrektor = dyrektors(:one)
  end

  test "visiting the index" do
    visit dyrektors_url
    assert_selector "h1", text: "Dyrektors"
  end

  test "should create dyrektor" do
    visit dyrektors_url
    click_on "New dyrektor"

    fill_in "Name", with: @dyrektor.Name
    fill_in "Salary", with: @dyrektor.Salary
    fill_in "Surname", with: @dyrektor.Surname
    fill_in "Magazyn", with: @dyrektor.magazyn_id
    click_on "Create Dyrektor"

    assert_text "Dyrektor was successfully created"
    click_on "Back"
  end

  test "should update Dyrektor" do
    visit dyrektor_url(@dyrektor)
    click_on "Edit this dyrektor", match: :first

    fill_in "Name", with: @dyrektor.Name
    fill_in "Salary", with: @dyrektor.Salary
    fill_in "Surname", with: @dyrektor.Surname
    fill_in "Magazyn", with: @dyrektor.magazyn_id
    click_on "Update Dyrektor"

    assert_text "Dyrektor was successfully updated"
    click_on "Back"
  end

  test "should destroy Dyrektor" do
    visit dyrektor_url(@dyrektor)
    click_on "Destroy this dyrektor", match: :first

    assert_text "Dyrektor was successfully destroyed"
  end
end
