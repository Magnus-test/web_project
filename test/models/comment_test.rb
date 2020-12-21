require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "valid data" do
    assert Comment.create(post: 0, content: nil, author: 0).invalid?
    assert Comment.create(post: nil, content: 'text', author: 0).invalid?
    assert Comment.create(post: 0, content: 'text', author: nil).invalid?
  end

  test "invalid data" do
    assert Comment.create(post: 0, content: 'text', author: 0).valid?
  end
end
