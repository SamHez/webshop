class NewslettersController < ApplicationController
  #layout 'static_pages/home.html.erb'
  def new
    @trainee = Newsletter.new
  end

  def create
    @trainee = Newsletter.new(trainee_params)
    if @trainee.save
      #binding.pry
      redirect_to root_path, notice: 'Credentials were successfully submitted-you will hear from us soon.' # or redirect, or render leave empty to render views/visitors/create.html.erb
    else
      redirect_to root_path, notice: 'Credentials were not submitted- one of the fields has already been submitted-either telephone or email.'

    end

  end
 
  private
  def trainee_params
    params.require(:newsletter).permit(:email,:name,:telephone)
  end

end