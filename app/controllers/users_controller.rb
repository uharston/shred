class UsersController < ApplicationController

  get '/signup' do 
    if logged_in? 
      redirect '/skate_spots'
    else
      erb :'/users/signup.html'
    end
  end 

  post '/signup' do 
    binding.pry
    if blank_input? || duplicate_username? || duplicate_email?
      redirect to "/signup"
    else 
      user = User.create(params)
      session[:user_id] = user.id 
      redirect to '/skate_spots'
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
