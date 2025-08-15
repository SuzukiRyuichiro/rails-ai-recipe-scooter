require "application_system_test_case"

class ReccipesTest < ApplicationSystemTestCase
  setup do
    @reccipe = reccipes(:one)
  end

  test "visiting the index" do
    visit reccipes_url
    assert_selector "h1", text: "Reccipes"
  end

  test "should create reccipe" do
    visit reccipes_url
    click_on "New reccipe"

    fill_in "Content", with: @reccipe.content
    fill_in "Ingredients", with: @reccipe.ingredients
    fill_in "Name", with: @reccipe.name
    click_on "Create Reccipe"

    assert_text "Reccipe was successfully created"
    click_on "Back"
  end

  test "should update Reccipe" do
    visit reccipe_url(@reccipe)
    click_on "Edit this reccipe", match: :first

    fill_in "Content", with: @reccipe.content
    fill_in "Ingredients", with: @reccipe.ingredients
    fill_in "Name", with: @reccipe.name
    click_on "Update Reccipe"

    assert_text "Reccipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Reccipe" do
    visit reccipe_url(@reccipe)
    click_on "Destroy this reccipe", match: :first

    assert_text "Reccipe was successfully destroyed"
  end
end
