require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "shred"
  end

  get "/" do
    erb :welcome
  end

  helpers do 

    def logged_in?
      !!current_user
    end

    def current_user 
      #look up memoization
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def correct_input?
     !!(params[:heat_index] == "Chill" || params[:heat_index] == "Moderate" || params[:heat_index] == "Hot" || params[:heat_index] == "Red Hot") && !!(params[:skill_level] == "Beginner" || params[:skill_level] == "Amateur" || params[:skill_level] == "Professional" || params[:skill_level] == "Any Skill Level")
          # true
        # end 
      # else
      #   false
      # end 
    end 

    # def blank_input? 
    #    !!(params[:username].blank? || params[:email].blank? || params[:password].blank?) 
    # end 

    # def duplicate_username?
    #   !!User.find_by(username: params[:username].strip)
    # end 

    # def duplicate_email? 
    #   !!User.find_by(username: params[:email].strip)
    # end 

  end 
end
