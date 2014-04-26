class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by( user_id: params[:user_id])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.user_id
  		redirect_to book_index_url
  	else
  	    redirect_to login_url, alert: "Invalid user-id/password combination"
  	end
  end

  def destroy
  end
end
