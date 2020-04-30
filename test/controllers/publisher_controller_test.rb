require 'test_helper'

class PublisherControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get publisher_title:string_url
    assert_response :success
  end

  test "should get location:string" do
    get publisher_location:string_url
    assert_response :success
  end

end
