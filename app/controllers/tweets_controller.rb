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
		if @tweet.save
			flash[:success]= "Congrats on tweet"
			redirect_to new_tweet_path
		else 
			puts "#{@tweet.errors}\n\n"
			puts "#{@tweet.errors.inspect}"
			render 'new'
			#will come back to this later
		end
	end	

	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end

end
