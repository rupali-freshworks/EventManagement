class EventsMailer < ActionMailer::Base
  default from: "rupalifreshworks@egmail.com"

  def event_notification(user, event)
  	@user = user
  	@event = event
  	mail(to: @user.email, subject: "Notification Email")
  end
end