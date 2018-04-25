class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		respond_to do |format|
			if user && user.authenticate(params[:session][:password])
				sign_in user
				format.html { redirect_to user }
			else
				format.html { render action: "new", notice: "Invalid email/password combination" }
			end
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
