class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new
		@fish="tuna"
		@tweet = Tweet.new
	end

	def edit

	end

	def destroy
	end

	def create
		@tweet=Tweet.new(tweet_params)
		@tweet.user=current_user
		@tweet.save
		redirect_to new_tweet_path
	end	

	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end

end
