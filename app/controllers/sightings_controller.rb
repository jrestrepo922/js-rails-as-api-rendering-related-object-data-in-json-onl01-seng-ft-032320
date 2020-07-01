class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])

        #sighting belongs to a bird and belongs to a location 
        render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
      end
end
