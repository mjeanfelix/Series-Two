class WelcomeController < ApplicationController
  def home
    @home = Home.new
  end

  def about_us
  end

  def contact
  end

  def community
  end

  def index
    @index = Submissions.new

  end
end
