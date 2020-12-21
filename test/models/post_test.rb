require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "invalid data" do
    assert Post.create(title: nil, content: '_', author: 0).invalid?
    assert Post.create(title: '_', content: nil, author: 0).invalid?
    assert Post.create(title: '_', content: '_', author: nil).invalid?
  end

  test "valid data" do
    assert Post.create(title: 'title', content: 'some content', author: 0).valid?
  end
end
