require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

  test "should not be saved without username and password" do
    user = User.new
    assert !user.save
    assert User.new
  end
end
