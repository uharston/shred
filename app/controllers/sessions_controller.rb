class SessionsController < ApplicationController

    get '/login' do 
        erb :'/sessions/login.html'
    end 

    post '/login' do 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect to "/"
        else 
            redirect to '/login'
        end
    end 

    get '/logout' do 
        session.clear 
        redirect to '/'
    end 



end 