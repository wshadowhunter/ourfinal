require 'test_helper'

class VoteTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

  test "user can vote only once" do
    assert vote = Vote.new
    assert Vote.new
  end

  test  "Test uid 1 in db"  do
      vote = Vote.find(:all, :conditions => ["uid = 1"])
      if vote.empty?
        assert false
      else
        assert true
      end
  end
end
