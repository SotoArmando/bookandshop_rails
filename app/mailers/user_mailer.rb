class UserMailer < ApplicationMailer
  default from: 'shopandbook@noreply.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://shopandcook.herokuapp.com/'
    mail(to: @user.user, subject: 'Welcome to My Awesome Site')
  end
end
