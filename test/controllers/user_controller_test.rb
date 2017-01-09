require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  def setup
      # @user = User.new(name: "Example User", email: "user@example.com",
      #                   password: "foobar", password_confirmation: "foobar")
      @user = User.new(name: "Example User", email: "user@example.com",password: "foobar",password_confirmation: "foobar")
    end
  # test "should get new" do
  #   get signup_path
  #   assert_response :success
  # end
  # test "password should be present (nonblank)" do
  #    @user.password = @user.password_confirmation = " " * 6
  #    assert_not @user.valid?
  #  end
  #
  #  test "password should have a minimum length" do
  #    @user.password = @user.password_confirmation = "a" * 5
  #    assert_not @user.valid?
  #  end
end
