namespace :event_tasks do
  desc "Sends mail notification to users each day to inform of subscribed events"

  task :event_reminder => :environment do
  	# puts "I'm in notifications"
  	events = Event.all
  	events.each do |event|
  		if (event.starts_at.to_i - DateTime.now.utc.to_i <= 3600)
  			event.subscriptions.each do |subscription|
  				EventsMailer.event_notification(subscription.user, event).deliver
  			end
  		end
  		
  	end
  end

end