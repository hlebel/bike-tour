require "application_system_test_case"

class SlogansTest < ApplicationSystemTestCase
  setup do
    @slogan = slogans(:one)
  end

  test "visiting the index" do
    visit slogans_url
    assert_selector "h1", text: "Slogans"
  end

  test "should create slogan" do
    visit slogans_url
    click_on "New slogan"

    fill_in "Email", with: @slogan.email
    fill_in "First name", with: @slogan.first_name
    fill_in "Last name", with: @slogan.last_name
    fill_in "Slogan", with: @slogan.slogan
    click_on "Create Slogan"

    assert_text "Slogan was successfully created"
    click_on "Back"
  end

  test "should update Slogan" do
    visit slogan_url(@slogan)
    click_on "Edit this slogan", match: :first

    fill_in "Email", with: @slogan.email
    fill_in "First name", with: @slogan.first_name
    fill_in "Last name", with: @slogan.last_name
    fill_in "Slogan", with: @slogan.slogan
    click_on "Update Slogan"

    assert_text "Slogan was successfully updated"
    click_on "Back"
  end

  test "should destroy Slogan" do
    visit slogan_url(@slogan)
    click_on "Destroy this slogan", match: :first

    assert_text "Slogan was successfully destroyed"
  end
end
