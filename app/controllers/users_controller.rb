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

  get '/users/:id/password' do 
    
    if logged_in? 
      @user = User.find_by_id(params[:id])
      if @user == current_user
        erb :'/users/password.html'
      else 
        redirect '/skate_spots'
      end 
    else 
      redirect '/login'
    end 

  end 

  post '/users/:id' do 
    if current_user.authenticate(params[:old_password])
      current_user.update(password: params[:password], password_confirmation: params[:password_confirmation])
      redirect "/users/#{current_user.id}"
    else
      redirect "/users/#{current_user.id}/password"
    end
  end 

  

end
