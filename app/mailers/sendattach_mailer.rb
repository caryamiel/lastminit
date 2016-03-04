class SendattachMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sendattach_mailer.send_attachment.subject
  #
  def send_attachment(sendattach)
    @sendattach = sendattach

    mail to: sendattach.email, subject: "file is sent from your collegues" do |format|
    	format.html
    end  
  end
end
