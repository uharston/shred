class SkateSpots < ApplicationController

    get '/skate_spots' do
        if logged_in?
            erb :'/skate_spots/index.html'
        else
            redirect '/'
        end
    end 

    get '/skate_spots/new' do 
        if logged_in? 
            erb :'/skate_spots/new.html'
        else 
            redirect '/'
        end 
    end 

    post '/skate_spots' do 
        binding.pry 
        if logged_in? 

        end 
    end 

end 