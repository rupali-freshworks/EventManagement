class SubscriptionsController < ApplicationController
	def new
		# @subscription = current_user.subscriptions.new
	end
	def create
		@subscription = current_user.subscriptions.build(params[:subscription])

		if @subscription.save
			flash[:success] = "Subscription is successfully created."
			redirect_to current_user
		else
			render 'new'
		end
	end
end
