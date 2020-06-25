class PassengersController < ApplicationController

  # GET: /passengers
  get "/passengers" do
    @passengers = Passenger.all
    erb :"/passengers/index.html"
  end

  # GET: /passengers/new
  get "/passengers/new" do
    erb :"/passengers/new.html"
  end

  # POST: /passengers
  post "/passengers" do
    @passenger = Passenger.create({
      name: params[:name]
    })
    redirect "/passengers"
  end

  # GET: /passengers/5
  get "/passengers/:id" do
    @passenger = Passenger.find(params[:id])
    erb :"/passengers/show.html"
  end

  # GET: /passengers/5/edit
  get "/passengers/:id/edit" do
    @passenger = Passenger.find(params[:id])
    erb :"/passengers/edit.html"
  end

  # PATCH: /passengers/5
  patch "/passengers/:id" do
    passenger = Passenger.find(params[:id])
    passenger.name = params[:name]
    passenger.save
    redirect "/passengers/:id"
  end

  # DELETE: /passengers/5/delete
  delete "/passengers/:id/delete" do
    redirect "/passengers"
  end
end
