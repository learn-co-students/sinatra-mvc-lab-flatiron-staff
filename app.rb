require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end 

    post '/piglatinize' do
        pigLatinTranslator = PigLatinizer.new
        @translated_phrase = pigLatinTranslator.piglatinize(params[:user_phrase])
        
        erb :piglatin_phrase
    end 

end