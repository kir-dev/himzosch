require "test_helper"

class SiteContentControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get site_content_edit_url
    assert_response :success
  end
end
