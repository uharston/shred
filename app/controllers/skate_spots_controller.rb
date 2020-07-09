class SkateSpotsController < ApplicationController

    get '/skate_spots' do
        redirect_if_not_logged_in
        @skate_spots = SkateSpot.all 
        erb :'/skate_spots/index.html'
    end 

    get '/skate_spots/new' do 
        redirect_if_not_logged_in
        erb :'/skate_spots/new.html'
    end
    
    
    post '/skate_spots' do 
        redirect_if_not_logged_in
        @skate_spot = current_user.skate_spots.build(params)
        if @skate_spot.save
            redirect '/skate_spots'
        else 
            erb :'/skate_spots/new.html'
        end 
    end 

 
    get "/skate_spots/:id" do
        redirect_if_not_logged_in
        set_skate_spot
        if @skate_spot
            erb :"/skate_spots/show.html"
        else
            redirect '/skate_spots'
        end
    end
    
    get "/skate_spots/:id/edit" do
        redirect_if_not_logged_in
        @skate_spot = current_user.skate_spots.find_by_id(params[:id])
        if @skate_spot 
            erb :"/skate_spots/edit.html"
        else
            redirect '/skate_spots'
        end
    end
    
    
    patch "/skate_spots/:id" do
        redirect_if_not_logged_in       
        set_skate_spot
        @skate_spot.update(name: params[:name], location: params[:location], heat_index: params[:heat_index], skill_level: params[:skill_level], description: params[:description])
        if @skate_spot.save 
            redirect "/skate_spots/#{params[:id]}"
        else
            erb :"/skate_spots/edit.html"
        end               
    end

    

    get '/skate_spots/:id/delete' do 
        redirect_if_not_logged_in
        set_skate_spot
        if @skate_spot && @skate_spot.user == current_user
            erb :'/skate_spots/delete.html'
        else
            redirect '/skate_spots'
        end

    end 


    
    
    delete '/skate_spots/:id/delete' do
        redirect_if_not_logged_in
        set_skate_spot
        if @skate_spot && @skate_spot.user == current_user
           @skate_spot.delete
        else
            redirect to '/skate_spots'
        end 
    end

    private 

    def set_skate_spot
        @skate_spot = SkateSpot.find_by_id(params[:id])
    end 



end

