class SkateSpots < ApplicationController

    get '/skate_spots' do
        if logged_in?
            erb :'/skate_spots/index.html'
        else
            redirect '/'
        end
    end 

end 