class GenresController < ApplicationController
    def index
        @genres = Genre.all  
    end

    def show 
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create 
        @genre = Genre.create(genre_params)
        if @genre.valid?
            redirect_to genre_path(@genre)
        else
            flash[:messages] = @genre.errors.full_messages
            redirect_to new_genre_path
        end
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update 
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        if @genre.valid?
            redirect_to genre_path(@genre)
        else
            flash[:messages] = @genre.errors.full_messages
            redirect_to edit_genre_path
        end
    end

    private 

    def genre_params
        params.require(:genre).permit(:name, :profile)
    end

    
end
