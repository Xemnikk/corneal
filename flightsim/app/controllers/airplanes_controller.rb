class AirplanesController < ApplicationController

  # GET: /airplanes
  get "/airplanes" do
    @airplanes = Airplane.all 
    @flights = Flight.all
    erb :"/airplanes/index.html"
  end

  # GET: /airplanes/new
  get "/airplanes/new" do
    erb :"/airplanes/new.html"
  end

  # POST: /airplanes
  post "/airplanes" do
    @airplane = Airplane.create({
      callsign: params[:callsign]
    })
    redirect "/airplanes"
  end

  # GET: /airplanes/5
  get "/airplanes/:id" do
    @airplane = Airplane.find(params[:id])

    erb :"/airplanes/show.html"
  end

  # GET: /airplanes/5/edit
  get "/airplanes/:id/edit" do
    @airplane = Airplane.find(params[:id])
    erb :"/airplanes/edit.html"
  end

  # PATCH: /airplanes/5
  patch "/airplanes/:id" do
    airplane = Airplane.find(params[:id])
    airplane.callsign = params[:callsign]
    airplane.save
    redirect "/airplanes/:id"
  end

  # DELETE: /airplanes/5/delete
  delete "/airplanes/:id/delete" do
    redirect "/airplanes"
  end
end
