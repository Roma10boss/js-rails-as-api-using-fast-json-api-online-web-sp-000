class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end
end
