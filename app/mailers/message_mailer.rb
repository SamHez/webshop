class MessageMailer < ApplicationMailer
  default :to => "alexshyaka@therailsshop.club"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end
