class User < ApplicationRecord
  include Gravtastic
  is_gravtastic

  before_save { email.downcase! }
  validates :name, presence: true,length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email, presence: true,length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },uniqueness: true
  validates :email, presence: true,length: { maximum: 255 }
  # validates(:name, presence: true)
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # test "email validation should accept valid addresses" do
  #   valid_addresses = %w[user@example.com foo@bar.com akl@narola.email ]
  #   valid_addresses.each do |valid_address|
  #     @user.email = valid_address
  #     assert @user.valid?, "#{valid_address.inspect} should be valid"
  #   end
  # end

  # test "email addresses should be unique" do
  #   duplicate_user = @user.dup
  #   duplicate_user.email = @user.email.upcase
  #   @user.save
  #   assert_not duplicate_user.valid?
  # end

  # test "email addresses should be saved as lower-case" do
  #     mixed_case_email = "Foo@ExAMPle.CoM"
  #     @user.email = mixed_case_email
  #     @user.save
  #     assert_equal mixed_case_email.downcase, @user.reload.email
  #   end

end
