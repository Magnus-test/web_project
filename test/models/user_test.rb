require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "valid data" do
    assert User.create(name: 'name', email: 'email@test.ru', password_digest: 'pass').valid?
  end

  test "invalid email format" do 
    assert User.create(name: 'name', email: 'email', password_digest: 'pass').invalid?
  end

  test "invalid data" do 
    assert User.create(name: 'name', email: 'email@test.ru', password_digest: nil).invalid?
    assert User.create(name: nil, email: 'email@test.ru', password_digest: 'pass').invalid?
  end

  test "name uniqness" do
    assert User.create(name: 'name', email: 'email@test.ru', password_digest: 'pass').valid?
    assert User.create(name: 'name', email: 'email2@test.ru', password_digest: 'pass').invalid?
  end
end
