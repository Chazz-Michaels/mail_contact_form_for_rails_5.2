require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'responds to name, email and body' do
    msg = Message.new

    assert msg.respond_to?(:name),  'does not respond to :name'
    assert msg.respond_to?(:email), 'does not respond to :email'
    assert msg.respond_to?(:body),  'does not respond to :body'
  end

  test 'should be valid when all attributes are set' do
    attrs = {
      name: 'mike',
      email: 'mike@example.com',
      body: 'mike is so0o0o0o amazing'
    }

    msg = Message.new attrs
    assert msg.valid?, 'should be valid'
  end
end