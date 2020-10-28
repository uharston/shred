class SessionsController < ApplicationController

    get '/login' do
        if logged_in?
            redirect '/skate_spots'
        else
            erb :'/sessions/login.html'
        end 
    end 

    post '/login' do
        @user = User.find_by(username: params[:username].strip)
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect to "/skate_spots"
        else     
            erb :'/sessions/login.html'
        end
    end 

    get '/logout' do 
        session.clear 
        redirect to '/'
    end 





end 