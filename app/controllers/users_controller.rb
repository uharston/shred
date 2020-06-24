class UsersController < ApplicationController

  get '/signup' do 
    if logged_in? 
      redirect '/skate_spots'
    else
      erb :'/users/signup.html'
    end
  end 

  post '/signup' do 
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      redirect to "/signup"
    else 
      user = User.create(params)
      session[:user_id] = user.id 
      redirect to '/skate_spots'
    end 
  end 

  

end
