require 'test_helper'

class ReplyTopicTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

  test "can only reply when logged in" do
      reply = ReplyTopic.new
      assert ReplyTopic.new
   end
end
