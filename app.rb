require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name'
    name = params[:name]
    name.reverse
  end 

end