class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end


  def create
    Tweet.create(text: tweet_params[:text], user_id: current_user.id)
  end

  def show
  end

  def destroy
  end

  def update
  end

  private
  def tweet_params
    params.permit(:text)
  end
end
