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
            @skate_spot = current_user.skate_spots.build(params)
            if @skate_spot.save 
                redirect '/skate_spots'
            else
                redirect '/'
            end
            redirect '/login'
        end 
    end 

  # GET: /users/5
  get "/skate_spots/:id" do
    if logged_in?
        @skate_spot = SkateSpot.find_by_id(params[:id])
        erb :"/skate_spots/show.html"
    else 
        redirect '/login'
    end 
  end

  # GET: /users/5/edit
  get "/skate_spots/:id/edit" do
    erb :"/skate_spots/edit.html"
  end

  # PATCH: /users/5
  patch "/skate_spots/:id" do
    redirect "/skate_spots/:id"
  end

  # DELETE: /users/5/delete
  delete "/skate_spots/:id/delete" do
    redirect "/skate_spots"
  end

end 