class ChallengesController < ApplicationController

  def index
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    
    if @challenge.save(challenge_params)
      flash.now[:notice] = "New challenge has been created"
    else
      flash.now[:alert] = "An error has ocurred"
      render :new
    end
  end

  private

    def challenge_params
      params.require(:challenge).permit(:from, :to)
    end

end