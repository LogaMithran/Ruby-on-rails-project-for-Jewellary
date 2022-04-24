require "application_system_test_case"

class JewelDataTest < ApplicationSystemTestCase
  setup do
    @jewel_datum = jewel_data(:one)
  end

  test "visiting the index" do
    visit jewel_data_url
    assert_selector "h1", text: "Jewel data"
  end

  test "should create jewel datum" do
    visit jewel_data_url
    click_on "New jewel datum"

    fill_in "Dateofpurchase", with: @jewel_datum.dateofpurchase
    fill_in "Jewelid", with: @jewel_datum.jewelId
    fill_in "Jewelname", with: @jewel_datum.jewelName
    fill_in "Jewelprice", with: @jewel_datum.jewelPrice
    click_on "Create Jewel datum"

    assert_text "Jewel datum was successfully created"
    click_on "Back"
  end

  test "should update Jewel datum" do
    visit jewel_datum_url(@jewel_datum)
    click_on "Edit this jewel datum", match: :first

    fill_in "Dateofpurchase", with: @jewel_datum.dateofpurchase
    fill_in "Jewelid", with: @jewel_datum.jewelId
    fill_in "Jewelname", with: @jewel_datum.jewelName
    fill_in "Jewelprice", with: @jewel_datum.jewelPrice
    click_on "Update Jewel datum"

    assert_text "Jewel datum was successfully updated"
    click_on "Back"
  end

  test "should destroy Jewel datum" do
    visit jewel_datum_url(@jewel_datum)
    click_on "Destroy this jewel datum", match: :first

    assert_text "Jewel datum was successfully destroyed"
  end
end
