require "test_helper"

class PasswordMailerTest < ActionMailer::TestCase
  test "rest" do
    mail = PasswordMailer.rest
    assert_equal "Rest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
