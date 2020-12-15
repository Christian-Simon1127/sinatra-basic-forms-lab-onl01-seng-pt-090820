require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/new' do 
    erb :create_puppy
  end
  
  post '/puppy' do
    @puppy = Puppy.new(params[0], params[1], params[2])
    
    erb :display_puppy
  end 

end
