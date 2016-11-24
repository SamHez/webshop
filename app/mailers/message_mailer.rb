class MessageMailer < ApplicationMailer
  default :to => "alexshyaka@therailsshop.club"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
  # Automated through a scheduler on heroku monthly newsletter subscription
  def newsletter_email(newsletter)
    @newsletter = newsletter
	mail(to: @newsletter.email subject: " Alex Shyaka from the Therailsshop coding club")
  end
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(newsletter)
   @newsletter = newsletter
	mail(to: @newsletter.email subject: " Therailsshop is humbled by your subscription")
  end
end
