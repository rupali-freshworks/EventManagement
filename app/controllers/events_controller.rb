class EventsController < ApplicationController

	def index
	end

	def new
		@event = current_user.events.new
	end

	def create
		@event = current_user.events.build(params[:event])

		if @event.save
			flash[:success] = "Event is successfully created."
			redirect_to current_user
		else
			render 'new'
		end

		# respond_to do |format|
		# 	if @event.save
		# 		format.html { redirect_to current_user, notice: 'Event is successfully created.'}
		# 	else
		# 		format.html { render action: "new" }
		# 	end
		# end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])

		respond_to do |format|
			if @event.update_attributes(params[:event])
				format.html { redirect_to current_user, notice: "Event is successfully updated."}
			else
				format.html { render action: 'edit'}
			end
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy

		respond_to do |format|
			format.html { redirect_to current_user }
		end
	end

	def show
		@event = Event.find(params[:id])
	end

	def subscription(event)
		@event = event
		@user = current_user
	end

end
