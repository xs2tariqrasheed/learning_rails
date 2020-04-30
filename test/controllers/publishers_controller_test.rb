require 'test_helper'

class PublishersControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get publishers_title:string_url
    assert_response :success
  end

  test "should get location:string" do
    get publishers_location:string_url
    assert_response :success
  end

end
