class ArtsController < ApplicationController
    def index
        @arts = Art.all
    end

    def new
        @art = Art.new
    end

    def create
        @art = Art.create(art_params)
        if @art.save
            flash[:notice] = "A new Art has been created."
            redirect_to "/arts"
        else
            render action: :new
        end

    end
    

    def show
        @art = Art.find(params[:id])
              
    end

    def edit
        @art = Art.find(params[:id])
    end

    def update
        @art = Art.find(params["id"])
        if @art.update(art_params)
            flash[:notice] = "Art has been updated."
            redirect_to @art
        else
            render action: :edit
        end
    end

    def destroy
        @art = Art.find(params[:id])
        @art.destroy
        flash[:notice] = "Art has been deleted."
        redirect_to "/arts"
        
    end
    private 
    def art_params
        params.require(:art).permit(:artist_id,:art_name,:year)
    end
end
