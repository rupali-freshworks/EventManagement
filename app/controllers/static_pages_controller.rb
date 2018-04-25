class StaticPagesController < ApplicationController
	def home
		if signed_in?
			@events = current_user.events
		end
	end
end
