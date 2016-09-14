class NewslettersController < ApplicationController
  #layout 'static_pages/home.html.erb'
  def new
    @email = Newsletter.new
  end

  def create
    @email = Newsletter.new(email_params)
    if @email.save
      #binding.pry
      redirect_to root_path, notice: 'Email was successfully submitted' # or redirect, or render leave empty to render views/visitors/create.html.erb
    else
      redirect_to root_path, notice: 'Email was not submitted'

    end

  end
  private
  def email_params
    params.require(:newsletter).permit(:email)
  end

end