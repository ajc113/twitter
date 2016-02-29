class TweetsController < ApplicationController
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
		@tweet.save

	end	

	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end

end
