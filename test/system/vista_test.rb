require "application_system_test_case"

class VistaTest < ApplicationSystemTestCase
  setup do
    @vistum = vista(:one)
  end

  test "visiting the index" do
    visit vista_url
    assert_selector "h1", text: "Vista"
  end

  test "creating a Vistum" do
    visit vista_url
    click_on "New Vistum"

    fill_in "Tittle", with: @vistum.tittle
    click_on "Create Vistum"

    assert_text "Vistum was successfully created"
    click_on "Back"
  end

  test "updating a Vistum" do
    visit vista_url
    click_on "Edit", match: :first

    fill_in "Tittle", with: @vistum.tittle
    click_on "Update Vistum"

    assert_text "Vistum was successfully updated"
    click_on "Back"
  end

  test "destroying a Vistum" do
    visit vista_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vistum was successfully destroyed"
  end
end
