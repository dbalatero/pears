require "application_system_test_case"

class PearsTest < ApplicationSystemTestCase
  setup do
    @pear = pears(:one)
  end

  test "visiting the index" do
    visit pears_url
    assert_selector "h1", text: "Pears"
  end

  test "should create pear" do
    visit pears_url
    click_on "New pear"

    fill_in "Url", with: @pear.url
    click_on "Create Pear"

    assert_text "Pear was successfully created"
    click_on "Back"
  end

  test "should update Pear" do
    visit pear_url(@pear)
    click_on "Edit this pear", match: :first

    fill_in "Url", with: @pear.url
    click_on "Update Pear"

    assert_text "Pear was successfully updated"
    click_on "Back"
  end

  test "should destroy Pear" do
    visit pear_url(@pear)
    click_on "Destroy this pear", match: :first

    assert_text "Pear was successfully destroyed"
  end
end
