class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :bird, :location
  ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
  
  def index
  sightings = Sighting.all
  render json: SightingSerializer.new(sightings)
end
  
end
