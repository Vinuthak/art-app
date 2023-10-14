class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        # params: { "id" => "1" }
        id = params["id"] # "1"
        
        @artist = Artist.find(id)
    end 
    
    def new
        @artist = Artist.new
    end

    def create
            @artist = Artist.create(artist_params)
            if  @artist.save   
                flash[:notice] = "A new Artist has been created."
                redirect_to @artist
            else
                redirect_to new_artist_path, alert:"Error creating artist!"   
            end
    end

    def edit
        @artist = Artist.find(params["id"])
    end

    def update
        @artist = Artist.find(params[:id])
        if @artist.update(artist_params)
            flash[:notice] = "Artist has been updated."
            redirect_to @artist # || artist_path(@artist) || "/artists/#{@artist.id}"
        else
            render action: :edit
        end
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        flash[:notice] = "The selected artist is deleted."
        redirect_to artists_path
    end
    
    private
    def artist_params
        params.require(:artist).permit(:name,:age,:experience_level)
    end
end
