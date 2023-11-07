class tweetsController < ApplicationController
  def index
    @tweets = tweet.all
  end

  def new
    @tweet = tweet.new
  end
  
  def create
    tweet = tweet.new(uid: params[:tweet][:uid], pass: params[:tweet][:pass],age: params[:tweet][:age])
    tweet.save
    redirect_to root_path
  end
  
  def destroy
    tweet.find(params[:id]).destroy
    flash[:success] = "ツイートを削除しました"
    redirect_to root_path
  end
end
