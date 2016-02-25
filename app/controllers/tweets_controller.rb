class TweetsController < ApplicationController
	def new
		@fish="tuna"
		@tweet = Tweet.new
	end

	def edit

	end

	def destroy
	end

end
