require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get public" do
    get static_pages_public_url
    assert_response :success
    assert_select "title", "Public Page"
  end

  test "should get registration" do
    get static_pages_registration_url
    assert_response :success
    assert_select "title", "Registration Page"
  end

  test "should get private" do
    get static_pages_private_url
    assert_response :success
    assert_select "title", "Users Home Page"
  end

  test "should get admin" do
    get static_pages_admin_url
    assert_response :success
    assert_select "title", "Admin Page"
  end

end
