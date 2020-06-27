class SkateSpotsController < ApplicationController

    get '/skate_spots' do
        if logged_in?
            @current_user = current_user 
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
            if correct_input?
                @skate_spot = current_user.skate_spots.build(params)
                if @skate_spot.save
                    redirect '/skate_spots'
                else
                    redirect '/'
                end
            else 
                redirect '/skate_spots'
            end
        else
            redirect '/login'
        end 
    end 

 
    get "/skate_spots/:id" do
        if logged_in?
            @skate_spot = SkateSpot.find_by_id(params[:id])
            if @skate_spot
                erb :"/skate_spots/show.html"
            else
                redirect '/skate_spots'
            end
        else
            redirect '/login'
        end
    end
    
    get "/skate_spots/:id/edit" do
        if logged_in?
            @skate_spot = SkateSpot.find_by_id(params[:id])
            if @skate_spot && @skate_spot.user == current_user 
                erb :"/skate_spots/edit.html"
            else
                redirect '/skate_spots'
            end
        else 
            redirect '/login'
        end
    end
    
    
    patch "/skate_spots/:id" do
        if logged_in?
            if correct_input?
                @skate_spot = SkateSpot.find_by_id(params[:id])
                if @skate_spot && @skate_spot.user == current_user 
                    @skate_spot.update(name: params[:name], location: params[:location], heat_index: params[:heat_index], skill_level: params[:skill_level], description: params[:description])
                    redirect "/skate_spots/#{params[:id]}"
                else
                    redirect "/skate_spots/#{params[:id]}"
                end
            else
                redirect "/skate_spots/#{params[:id]}/edit" 
            end
        else
            redirect "/skate_spots/#{params[:id]}"
        end
    end

    get '/skate_spots/:id/delete' do 
        if logged_in?
            @skate_spot = SkateSpot.find_by_id(params[:id])
            if @skate_spot && @skate_spot.user == current_user
                erb :'/skate_spots/delete.html'
            else
                redirect '/skate_spots'
            end
        else 
            redirect '/'
        end
    end 
    
    
    delete '/skate_spots/:id/delete' do
        if logged_in?
            @skate_spot = SkateSpot.find_by_id(params[:id])
            if @skate_spot && @skate_spot.user == current_user
                @skate_spot.delete
            end
            redirect to '/skate_spots'
        else
            redirect to '/login'
        end
    end
end

