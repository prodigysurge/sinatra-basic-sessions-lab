require_relative 'config/environment'

class App < Sinatra::Base
  
    configure do
        enable :sessions
        set :session_secret, 'jimmy_crack_corn_and_i_dont_care'
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end


end