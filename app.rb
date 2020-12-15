require_relative 'config/environment'
require_relative 'models/'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/new' do 
    erb :create_puppy
  end
  
  post '/puppy' do
    erb :display_puppy
  end 

end
