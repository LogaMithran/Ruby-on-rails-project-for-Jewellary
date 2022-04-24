require "test_helper"

class JewelDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jewel_datum = jewel_data(:one)
  end

  test "should get index" do
    get jewel_data_url
    assert_response :success
  end

  test "should get new" do
    get new_jewel_datum_url
    assert_response :success
  end

  test "should create jewel_datum" do
    assert_difference("JewelDatum.count") do
      post jewel_data_url, params: { jewel_datum: { dateofpurchase: @jewel_datum.dateofpurchase, jewelId: @jewel_datum.jewelId, jewelName: @jewel_datum.jewelName, jewelPrice: @jewel_datum.jewelPrice } }
    end

    assert_redirected_to jewel_datum_url(JewelDatum.last)
  end

  test "should show jewel_datum" do
    get jewel_datum_url(@jewel_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_jewel_datum_url(@jewel_datum)
    assert_response :success
  end

  test "should update jewel_datum" do
    patch jewel_datum_url(@jewel_datum), params: { jewel_datum: { dateofpurchase: @jewel_datum.dateofpurchase, jewelId: @jewel_datum.jewelId, jewelName: @jewel_datum.jewelName, jewelPrice: @jewel_datum.jewelPrice } }
    assert_redirected_to jewel_datum_url(@jewel_datum)
  end

  test "should destroy jewel_datum" do
    assert_difference("JewelDatum.count", -1) do
      delete jewel_datum_url(@jewel_datum)
    end

    assert_redirected_to jewel_data_url
  end
end
