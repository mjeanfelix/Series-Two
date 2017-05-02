class WelcomeController < ApplicationController
  def home
  end

  def about_us
  end

  def contact
  end

  def community
    @writers = Writer.where(approved: true)
  end

  def index
  end

  def donations
  end

  def create
    @name = Name.new(params[:name])

    @name.save
    redirect_to @name
  end


end
