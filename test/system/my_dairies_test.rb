require "application_system_test_case"

class MyDairiesTest < ApplicationSystemTestCase
  setup do
    @my_dairy = my_dairies(:one)
  end

  test "visiting the index" do
    visit my_dairies_url
    assert_selector "h1", text: "My Dairies"
  end

  test "creating a My dairy" do
    visit my_dairies_url
    click_on "New My Dairy"

    fill_in "Content", with: @my_dairy.content
    click_on "Create My dairy"

    assert_text "My dairy was successfully created"
    click_on "Back"
  end

  test "updating a My dairy" do
    visit my_dairies_url
    click_on "Edit", match: :first

    fill_in "Content", with: @my_dairy.content
    click_on "Update My dairy"

    assert_text "My dairy was successfully updated"
    click_on "Back"
  end

  test "destroying a My dairy" do
    visit my_dairies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My dairy was successfully destroyed"
  end
end
