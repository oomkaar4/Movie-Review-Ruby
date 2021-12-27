class GenersController< ApplicationController

    def show
        @movie=Movie.find(params[:id])
        @gener=@movie.geners
    end
end