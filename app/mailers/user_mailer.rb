class UserMailer < ActionMailer::Base
  default from: "rupalifreshworks@gmail.com"

  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: "Sample Email")
  end

end
