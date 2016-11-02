class MessageMailer < ApplicationMailer
  default :to => "alexshyaka@therailsshop.club"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
  def newsletter_email(newsletter)
    @newsletter = newsletter
	mail(to: @newsletter.email, subject: " Thanks for subscribing to Therailsshop coding club")
  end
end
