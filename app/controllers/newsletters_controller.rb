class NewslettersController < ApplicationController
  #layout 'static_pages/home.html.erb'
  def new
    @trainee = Newsletter.new
  end

  def create
    @trainee = Newsletter.new(trainee_params)
    if @trainee.save
      # Deliver the signup email
      MessageMailer.send_signup_email(@trainee).deliver_now
      redirect_to root_path, notice: 'Credentials were submitted and a welcome email has been sent to your email address'
    else
      redirect_to root_path, notice: 'Credentials were not submitted- one of the fields has already been submitted-either telephone or email.'

    end

  end
 
  private
  def trainee_params
    params.require(:newsletter).permit(:email,:name,:telephone)
  end

end