require "test_helper"

class ToiletsControllerTest < ActionDispatch::IntegrationTest
  test "should get gender:string" do
    get toilets_gender:string_url
    assert_response :success
  end

  test "should get location:string" do
    get toilets_location:string_url
    assert_response :success
  end

  test "should get type:string" do
    get toilets_type:string_url
    assert_response :success
  end

  test "should get price:integer" do
    get toilets_price:integer_url
    assert_response :success
  end
end
