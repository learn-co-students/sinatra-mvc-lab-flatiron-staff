require_relative 'config/environment'
# require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	# post '/' do 
	# 	"Hello wordl"
	# end

	post '/piglatinize' do 
		@text_from_user = params["user_phrase"]

		@phrase = PigLatinizer.new

		erb :results

	end


end