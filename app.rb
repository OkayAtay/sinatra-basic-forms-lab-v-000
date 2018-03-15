require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    erb :display_puppy
  end
end
