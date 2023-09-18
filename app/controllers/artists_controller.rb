class ArtistsController < ApplicationController
    def index
        @artists = get_artists
    end

    def show
        # params: { "id" => "1" }
        id = params["id"] # "1"
        
        artists = get_artists
        
        @artist = artists.find { |artist| artist.id == id.to_i }
    end 

    private

    def get_artists
        [
            Artist.new(id: 1, name:"Nivin",age:25,experience_level:5),
            Artist.new(id: 2, name: "Mohanlal",age: 40,experience_level:5),
            Artist.new(id: 3,name: "Mammootty",age: 35,experience_level:2)
        ]
    end
end
