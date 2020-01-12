require 'test_helper'

class ChargeControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get charge_post_url
    assert_response :success
  end

  test "should get amount:integer" do
    get charge_amount:integer_url
    assert_response :success
  end

  test "should get receipt_email:text" do
    get charge_receipt_email:text_url
    assert_response :success
  end

end
