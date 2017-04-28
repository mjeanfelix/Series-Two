class SessionsController < ApplicationController

  def new
    # Nothing to do here other than render new.html.erb
  end

  def create
    # Not using an instance variable since
    # we're not providingthe user to a view
    writer = Writer.find_by(email: params[:email])
    # Taking advantage of the && logical operator's
    # short-circuiting
    if writer && writer.authenticate(params[:password])
      # Successful log in!
      session[:writer_id] = writer.id
      # notice: is a special flash[:notice] accessor
      redirect_to root_path, notice: 'Logged in!'
    else
      # flash.now is used for messaging
      # during the CURRENT request
      flash.now.alert = 'Invalid login credentials - try again!'
      render :new
    end
  end

  def destroy
    session[:writer_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
