class SkateSpotsController < ApplicationController

    get '/skate_spots' do
        if logged_in?
            @skate_spots = SkateSpot.all 
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
        if logged_in? 
            @skate_spot = current_user.skate_spots.build(params)
            if @skate_spot.save 
                redirect '/skate_spots'
            else
                redirect '/'
            end
            redirect '/login'
        end 
    end 

end 