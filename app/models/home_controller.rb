class HomeController < ApplicationController

  def index
  end

  def about
    @challenge = Challenge.new
  end
  
end