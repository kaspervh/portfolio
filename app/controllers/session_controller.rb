class SessionController < ApplicationController
  
  def new
    user = User.all
  end

  #creates session
  def create
    #looks fo user with the username from login form
  	user = User.find_by_username(params[:username])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/home/about_me'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to '/login'
  end
end
