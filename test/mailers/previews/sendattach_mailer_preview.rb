# Preview all emails at http://localhost:3000/rails/mailers/sendattach_mailer
class SendattachMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sendattach_mailer/send_attachment
  def send_attachment
    SendattachMailer.send_attachment
  end

end
