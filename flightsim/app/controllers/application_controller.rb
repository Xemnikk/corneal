require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    redirect('/home')
  end
  
  get "/home" do

    erb :"/welcome"
  end

end
