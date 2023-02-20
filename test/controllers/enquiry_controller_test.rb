require "test_helper"

class EnquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get set" do
    get enquiry_set_url
    assert_response :success
  end

  test "should get unset" do
    get enquiry_unset_url
    assert_response :success
  end

  test "should get export" do
    get enquiry_export_url
    assert_response :success
  end
end
