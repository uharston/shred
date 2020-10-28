class UsersController < ApplicationController

  get '/signup' do 
    if logged_in? 
      redirect '/skate_spots'
    else
      erb :'/users/signup.html'
    end
  end 

  post '/signup' do
    user = {}
    params.each do |k, v| 
      user[k] = v.strip
    end
    
    @user = User.create(user)
    if @user.save
      session[:user_id] = @user.id 
      redirect to '/skate_spots'
    else 
      erb :'/users/signup.html'
    end 
  end 

  get '/users/password' do 
    redirect_if_not_logged_in
    erb :'/users/password.html'
  end 

  get '/users/:id' do 
    redirect_if_not_logged_in
    set_user 
    erb :'/users/show.html'
  end 




  post '/users/:id' do
    if current_user.authenticate(params[:old_password]) && current_user.update(password: params[:password], password_confirmation: params[:password_confirmation])
        redirect "/users/#{current_user.id}"
    else
      current_user.save 
      erb :'/users/password.html'
      #redirect "/users/#{current_user.id}/password"
    end
  end 

  private 

  def set_user 
    @user = User.find_by_id(params[:id])
  end 

end
