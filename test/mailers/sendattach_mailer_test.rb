require 'test_helper'

class SendattachMailerTest < ActionMailer::TestCase
  test "send_attachment" do
    mail = SendattachMailer.send_attachment
    assert_equal "Send attachment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
