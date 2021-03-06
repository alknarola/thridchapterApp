require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

  # test "should get signup" do
  #   get signup_path
  #   assert_response :success
  #   assert_select "title", "SignUp | Ruby on Rails Tutorial Sample App"
  # end

  test "should get signin" do
    get signin_path
    assert_response :success
    assert_select "title", "SignIn | Ruby on Rails Tutorial Sample App"
  end


end
