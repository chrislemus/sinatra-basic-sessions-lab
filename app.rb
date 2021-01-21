require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
  end 

  get('/') {
    erb :index
  }

  post('/checkout') {
    session["item"] =  params['item']
    @session = session
  }

end