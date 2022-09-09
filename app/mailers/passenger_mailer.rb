class PassengerMailer < ApplicationMailer
  default from: 'ziam95253@gmail.com'

  def welcome_email
    @user = params[:user]
    @booking = params[:booking]
    @url  = 'http://127.0.0.1:3000/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
