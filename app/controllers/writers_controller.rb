class WritersController < ApplicationController
  def new
    @writer = Writer.new
  end

  def create
    @writer = Writer.new(user_params)
    if @writer.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render :new
    end
  end

private

    def user_params
      params.require(:writer).permit(:name, :email, :password, :password_confirmation)
    end
end
