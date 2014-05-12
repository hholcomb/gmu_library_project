class SessionsController < ApplicationController
  def new
  end

  def create
      # bring the DB record into the user object
  	user = User.find_by( user_id: params[:user_id])
  	if user and user.authenticate(params[:password])
       	   session[:user_id] = user.user_id
           session[:admin] = user.admin
           session[:name] = user.name
           session[:user_index] = user.id
           redirect_to books_url
  	else
  	    redirect_to login_url, alert: "Invalid user-id/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
    session[:admin] = false
    session[:name] = ""
  	redirect_to login_url, notice: "Logged out"

  end
end
