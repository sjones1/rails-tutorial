require 'test_helper'

class UserTest < ActiveSupport::TestCase
 def setup
  @user = User.new(name: "", email:"")
 end
 
 test "should be valid" do
  assert @user.valid?
 end

 test "name should be present" do
  @user.name = ""
  assert_not @user.valid?
 end

 test "email should be present" do
  @user.email = ""
  assert_not @user.valid?
 end

 test "user validation should accept valid" do
  valid_addresses = %w[user@example.com USER@foo.COM A_US-eR@foo.bar.org first.last12@foo.jp ali+frank@bus.com]
  valid_addresses.each do |valid_address|
   @user.email = valid_address
   assert @user.valid?, "#{valid_address.inspect} should be valid"
   end
  end
 end 
 # test "the truth" do
  #   assert true
  # end
end
