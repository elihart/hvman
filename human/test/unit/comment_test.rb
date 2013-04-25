require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  test "verify basic comments" do
    assert_equal users(:one).comments.length, 2, "User doesn't have the correct number of comments"

    assert_equal comments(:one).comments.length, 1, "Comment doesn't have the correct number of nested comments"
    assert_equal posts(:one).comments.length, 1, "Post doesn't have the correct number of comments" 
    
    users(:one).comments.each do |comment|
      assert_equal comment.commenter_id, users(:one).id, "wrong user"
    end

    assert_equal comments(:one).comments[0].commenter_id, users(:one).id
    assert_equal posts(:one).comments[0].commenter_id, users(:one).id 
  end
  
  test "validations" do

  end 
end
