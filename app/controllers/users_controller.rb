class UsersController < ApplicationController

  get '/signup' do 
    if logged_in? 
      redirect '/skate_spots'
    else
      erb :'/users/signup.html'
    end
  end 

  post '/signup' do
    user = User.create(params)
    if user.save
      session[:user_id] = user.id 
      redirect to '/skate_spots'
    else 
      redirect '/signup'
    end 
  end 

  get '/users/:id' do 
    if logged_in? 
      @user = User.find_by_id(params[:id])
      erb :'/users/show.html'
    else 
      redirect '/login'
    end 
  end 

  

end
