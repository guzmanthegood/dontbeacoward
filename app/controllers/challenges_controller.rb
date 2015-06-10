class ChallengesController < ApplicationController

  def index
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    
    if @challenge.save(challenge_params)
      flash[:success] = "New challenge has been created"
      redirect_to root_path
    else
      flash.now[:danger] = "An error has ocurred"
      render :new
    end
  end

  private

    def challenge_params
      params.require(:challenge).permit(:from, :to)
    end

end