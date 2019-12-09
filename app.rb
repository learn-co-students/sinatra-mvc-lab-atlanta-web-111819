require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        pig_latinizer = PigLatinizer.new
        @latinized = pig_latinizer.piglatinize(params[:user_phrase])
        erb :latinized
    end

end