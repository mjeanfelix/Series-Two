class SessionsController < ApplicationController

  def new

  end

  def create

    writer = Writer.find_by(email: params[:email])

    if writer && writer.authenticate(params[:password])

      session[:writer_id] = writer.id

      redirect_to root_path, notice: 'Logged in!'
    else

      flash.now.alert = 'Invalid login credentials - try again!'
      render :new
    end
  end

  def destroy
    session[:writer_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
